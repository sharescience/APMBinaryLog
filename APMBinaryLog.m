function APMBinaryLog
    LOG_FORMAT_MSG    = 128;
    
    % #define HEAD_BYTE1      0xA3    // Decimal 163
    % #define HEAD_BYTE2      0x95    // Decimal 149
    HEAD_BYTE1 = 163;
    HEAD_BYTE2 = 149;
    
    % struct LogStructure {
    %     uint8_t msg_type;
    %     uint8_t msg_len;
    %     const char name[5];
    %     const char format[16];
    %     const char labels[64];
    % };
    NameLength   = 4;
    FormatLength = 16;
    LabelLength  = 64;

    fid = -1;
    [filename, pathname] = uigetfile({'*.bin';'*.*'}, 'Open log file(*.bin)');
    fullname             = strcat(char(pathname), char(filename));
    fid = fopen(fullname, 'rb');
    if fid == -1 
        return; 
    end
    fsize = 0;
    if(fid > 0)
        fseek(fid, 0, 1);
        fsize = ftell(fid);
        fseek(fid, 0, -1);
    end

    types={}; lengths={}; names={}; formats={}; labels={};values={};log={};
    c_last  = zeros(3, 1);
    
    % first read find all FMT
    while ftell(fid) < fsize
        c       = fread(fid, 1);
        ptr_pos = ftell(fid);
        if ptr_pos > 3
            c_last(1) = c_last(2);
            c_last(2) = c_last(3);
            c_last(3) = c;
        else 
            switch ptr_pos
                case 1
                    c_last(1) = c;
                    continue;
                case 2
                    c_last(2) = c;
                    continue;
                case 3
                    c_last(3) = c; 
            end
        end

        if isequal(c_last(1:2, 1),[HEAD_BYTE1; HEAD_BYTE2])
            if c_last(3) == LOG_FORMAT_MSG % Find FMT format infomation
                type   = fread(fid, 1);
                length = fread(fid, 1);
                name   = strtrim(cellstr(char(fread(fid, NameLength)')));
                format = strtrim(cellstr(char(fread(fid, FormatLength)')));
                label  = strtrim(strcat(cellstr(char(fread(fid, LabelLength)')), ',n'));
                value  = {};
                if any(strcmp(name,names))
                    continue;
                else
                    types  {numel(types)  +1, 1} = type;
                    lengths{numel(lengths)+1, 1} = length;
                    names  {numel(names)  +1, 1} = name;
                    formats{numel(formats)+1, 1} = format;
                    labels {numel(labels) +1, 1} = char2cell(char(label),[',']);
                    values {numel(values) +1, 1} = value;
                    log = [types, lengths, names, formats, labels, values];
                end
            else
                continue;
            end
        end
    end
    
    % re-read log file
    fseek(fid, 0, -1);
    num = 0;
    
    while ftell(fid) < fsize
        c       = fread(fid, 1);
        ptr_pos = ftell(fid);
        if ptr_pos > 3
            c_last(1) = c_last(2);
            c_last(2) = c_last(3);
            c_last(3) = c;
        else 
            switch ptr_pos
                case 1
                    c_last(1) = c;
                    continue;
                case 2
                    c_last(2) = c;
                    continue;
                case 3
                    c_last(3) = c; 
            end
        end

        if isequal(c_last(1:2, 1),[HEAD_BYTE1; HEAD_BYTE2])
            if c_last(3) == LOG_FORMAT_MSG % Find FMT format infomation
                continue;
            end
            row_num = find(c_last(3)==cell2mat(log(:,1))); 
            if ~isempty(row_num) % If the ID already in the list
                format = strtrim(cellstr(log{row_num, 4}));
                format_str = format{1};

                format_len = size(format_str, 2);
                value      = {};
                for i = 1: format_len
                    switch format_str(i)
                        case 'b'                             %   b   : int8_t
                            value{i} = fread(fid, 1, 'int8');
                        case 'B'                             %   B   : uint8_t
                            value{i} = fread(fid, 1, 'uint8');
                        case 'h'                             %   h   : int16_t
                            value{i} = fread(fid, 1, 'int16');
                        case 'H'                             %   H   : uint16_t
                            value{i} = fread(fid, 1, 'uint16');
                        case 'i'                             %   i   : int32_t
                            value{i} = fread(fid, 1, 'int32');
                        case 'I'                             %   I   : uint32_t
                            value{i} = fread(fid, 1, 'uint32');
                        case 'f'                             %   f   : float
                            value{i} = fread(fid, 1, 'single');
                        case 'd'                             %   d   : double
                            value{i} = fread(fid, 1, 'double');
                        case 'n'                             %   n   : char[4]
                            value{i} = strtrim(cellstr(fread(fid, 4, 'uint8=>char')'));
                        case 'N'                             %   N   : char[16]
                            value{i} = strtrim(cellstr(fread(fid, 16, 'uint8=>char')'));
                        case 'Z'                             %   Z   : char[64]
                            value{i} = strtrim(cellstr(fread(fid, 64, 'uint8=>char')'));
                        case 'c'                             %   c   : int16_t * 100
                            value{i} = fread(fid, 1, 'int16');
                        case 'C'                             %   C   : uint16_t * 100
                            value{i} = fread(fid, 1, 'uint16');
                        case 'e'                             %   e   : int32_t * 100
                            value{i} = fread(fid, 1, 'int32');
                        case 'E'                             %   E   : uint32_t * 100
                            value{i} = fread(fid, 1, 'uint32');
                        case 'L'                             %   L   : int32_t latitude/longitude
                            value{i} = fread(fid, 1, 'int32');
                        case 'M'                             %   M   : uint8_t flight mode
                            value{i} = fread(fid, 1, 'uint8');
                        case 'q'                             %   q   : int64_t
                            value{i} = fread(fid, 1, 'int64');
                        case 'Q'                             %   Q   : uint64_t
                            value{i} = fread(fid, 1, 'uint64');
                    end
                end
                num        = num +1;
                value{i+1} = num;
                log{row_num, 6}(size(log{row_num, 6},1)+1,:) = value; 
            end
        end
    end
    fclose(fid);

    for i = 1: size(log,1)
        if isempty(log{i, 6})
            continue;
        else
            C={}; FIELDS={};
            for j = 1: size(log{i, 5},1)
                C{j}=log{i, 6}(:, j);
                FIELDS{j}=char(log{i, 5}(j));
            end
            eval(strcat(lower(char(log{i, 3})),'=cell2struct(C,FIELDS,2);'));
            log{i, 7}(1,1) = strfind(log{i, 4}, 'n');
            log{i, 7}(1,2) = strfind(log{i, 4}, 'N');
            log{i, 7}(1,3) = strfind(log{i, 4}, 'Z');
            for j = 1: size(char(log{i, 4}), 2)+1 % Additional num
                if ~isempty(find(j == cell2mat(log{i, 7}(1,1))))
                    continue;
                else if ~isempty(find(j == cell2mat(log{i, 7}(1,2))))
                        continue;
                    else if ~isempty(find(j == cell2mat(log{i, 7}(1,3))))
                            continue;
                        else
                            eval(char(strcat(lower(log{i, 3}),'.',char(log{i, 5}(j, 1)),' = cell2mat(',lower(log{i, 3}),'.', char(log{i, 5}(j, 1)),');')));
                        end
                    end
                end
            end
        end
    end
    
    % if this script run as a fuction, then below is useful.
    for i = 1: size(log, 1)
        if isempty(log{i, 6})
            continue;
        else
            eval(char(strcat('assignin(','''','base','''',', ','''',char(lower(char(log{i, 3}))),'''',',', char(lower(char(log{i, 3}))), ');')));
        end
    end
    assignin('base','log',log);            
end
