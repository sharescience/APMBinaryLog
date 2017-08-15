function varargout = DataAnalysis(varargin)
% DATAANALYSIS MATLAB code for DataAnalysis.fig
%      DATAANALYSIS, by itself, creates a new DATAANALYSIS or raises the existing
%      singleton*.
%
%      H = DATAANALYSIS returns the handle to a new DATAANALYSIS or the handle to
%      the existing singleton*.
%
%      DATAANALYSIS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DATAANALYSIS.M with the given input arguments.
%
%      DATAANALYSIS('Property','Value',...) creates a new DATAANALYSIS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before DataAnalysis_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to DataAnalysis_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DataAnalysis

% Last Modified by GUIDE v2.5 03-Aug-2017 20:05:51

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DataAnalysis_OpeningFcn, ...
                   'gui_OutputFcn',  @DataAnalysis_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before DataAnalysis is made visible.
function DataAnalysis_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to DataAnalysis (see VARARGIN)

% Choose default command line output for DataAnalysis
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes DataAnalysis wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = DataAnalysis_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in tb011.
function tb011_Callback(hObject, eventdata, handles)
% hObject    handle to tb011 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(get(handles.tb011,'Value'))
    set(handles.tb011,'String','show');
    set(handles.tb011,'BackGroundColor','g')
else
    set(handles.tb011,'String','hide');
    set(handles.tb011,'BackGroundColor','r')
end
% Hint: get(hObject,'Value') returns toggle state of tb011



function ed011_Callback(hObject, eventdata, handles)
% hObject    handle to ed011 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(isempty(get(handles.ed011,'String')))
    set(handles.t012,'Visible','off');
    set(handles.ed012,'Visible','off');    
else
    set(handles.t012,'Visible','on');
    set(handles.ed012,'Visible','on');
end

if( isempty(get(handles.ed011,'String')) && isempty(get(handles.ed012,'String')))
    set(handles.tb021,'Visible','off');
    set(handles.t021,'Visible','off');
    set(handles.ed021,'Visible','off');
else
    
    set(handles.tb021,'Visible','on');
    set(handles.t021,'Visible','on');
    set(handles.ed021,'Visible','on');
end

global x01
if(~isempty(get(handles.ed011,'String')))
    x01 = get(handles.ed011,'String');
else
    x01 = [];
end
% Hints: get(hObject,'String') returns contents of ed011 as text
%        str2double(get(hObject,'String')) returns contents of ed011 as a double


% --- Executes during object creation, after setting all properties.
function ed011_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed011 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed012_Callback(hObject, eventdata, handles)
% hObject    handle to ed012 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(isempty(get(handles.ed012,'String')))
    set(handles.t013,'Visible','off');
    set(handles.t014,'Visible','off');
    set(handles.t015,'Visible','off');
    set(handles.ed013,'Visible','off');
    set(handles.ed014,'Visible','off');
    set(handles.ed015,'Visible','off');
    set(handles.ax011,'Visible','off');
else
    set(handles.t013,'Visible','on');
    set(handles.t014,'Visible','on');
    set(handles.t015,'Visible','on');
    set(handles.ed013,'Visible','on');
    set(handles.ed014,'Visible','on');
    set(handles.ed015,'Visible','on');
    set(handles.ax011,'Visible','on');
    plot(handles.ax011,[0,1],[0,0],'b');
end

if( isempty(get(handles.ed011,'String')) && isempty(get(handles.ed012,'String')))
    set(handles.tb021,'Visible','off');
    set(handles.t021,'Visible','off');
    set(handles.ed021,'Visible','off');
else
    
    set(handles.tb021,'Visible','on');
    set(handles.t021,'Visible','on');
    set(handles.ed021,'Visible','on');
end

global y01
if(~isempty(get(handles.ed012,'String')))
    y01 = get(handles.ed012,'String');
else
    y01 = [];
end
% Hints: get(hObject,'String') returns contents of ed012 as text
%        str2double(get(hObject,'String')) returns contents of ed012 as a double


% --- Executes during object creation, after setting all properties.
function ed012_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed012 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed013_Callback(hObject, eventdata, handles)
% hObject    handle to ed013 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed013 as text
%        str2double(get(hObject,'String')) returns contents of ed013 as a double


% --- Executes during object creation, after setting all properties.
function ed013_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed013 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed014_Callback(hObject, eventdata, handles)
% hObject    handle to ed014 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed014 as text
%        str2double(get(hObject,'String')) returns contents of ed014 as a double


% --- Executes during object creation, after setting all properties.
function ed014_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed014 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed015_Callback(hObject, eventdata, handles)
% hObject    handle to ed015 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed015 as text
%        str2double(get(hObject,'String')) returns contents of ed015 as a double


% --- Executes during object creation, after setting all properties.
function ed015_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed015 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in tb021.
function tb021_Callback(hObject, eventdata, handles)
% hObject    handle to tb021 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(get(handles.tb021,'Value'))
    set(handles.tb021,'String','show');
    set(handles.tb021,'BackGroundColor','g')
else
    set(handles.tb021,'String','hide');
    set(handles.tb021,'BackGroundColor','r')
end
% Hint: get(hObject,'Value') returns toggle state of tb021



function ed021_Callback(hObject, eventdata, handles)
% hObject    handle to ed021 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed021 as text
%        str2double(get(hObject,'String')) returns contents of ed021 as a double
if(isempty(get(handles.ed021,'String')))
    set(handles.t022,'Visible','off');
    set(handles.ed022,'Visible','off');    
else
    set(handles.t022,'Visible','on');
    set(handles.ed022,'Visible','on');
end

if( isempty(get(handles.ed021,'String')) && isempty(get(handles.ed022,'String')))
    set(handles.tb031,'Visible','off');
    set(handles.t031,'Visible','off');
    set(handles.ed031,'Visible','off');
else
    
    set(handles.tb031,'Visible','on');
    set(handles.t031,'Visible','on');
    set(handles.ed031,'Visible','on');
end

global x02
if(~isempty(get(handles.ed021,'String')))
    x02 = get(handles.ed021,'String');
else
    x02 = [];
end
% --- Executes during object creation, after setting all properties.
function ed021_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed021 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed022_Callback(hObject, eventdata, handles)
% hObject    handle to ed022 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(isempty(get(handles.ed022,'String')))
    set(handles.t023,'Visible','off');
    set(handles.t024,'Visible','off');
    set(handles.t025,'Visible','off');
    set(handles.ed023,'Visible','off');
    set(handles.ed024,'Visible','off');
    set(handles.ed025,'Visible','off');
    set(handles.ax021,'Visible','off');
else
    set(handles.t023,'Visible','on');
    set(handles.t024,'Visible','on');
    set(handles.t025,'Visible','on');
    set(handles.ed023,'Visible','on');
    set(handles.ed024,'Visible','on');
    set(handles.ed025,'Visible','on');
    set(handles.ax021,'Visible','on');
    plot(handles.ax021,[0,1],[0,0],'r');
end

if( isempty(get(handles.ed021,'String')) && isempty(get(handles.ed022,'String')))
    set(handles.tb031,'Visible','off');
    set(handles.t031,'Visible','off');
    set(handles.ed031,'Visible','off');
else
    
    set(handles.tb031,'Visible','on');
    set(handles.t031,'Visible','on');
    set(handles.ed031,'Visible','on');
end

global y02
if(~isempty(get(handles.ed022,'String')))
    y02 = get(handles.ed022,'String');
else
    y02 = [];
end
% Hints: get(hObject,'String') returns contents of ed022 as text
%        str2double(get(hObject,'String')) returns contents of ed022 as a double


% --- Executes during object creation, after setting all properties.
function ed022_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed022 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed023_Callback(hObject, eventdata, handles)
% hObject    handle to ed023 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed023 as text
%        str2double(get(hObject,'String')) returns contents of ed023 as a double


% --- Executes during object creation, after setting all properties.
function ed023_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed023 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed024_Callback(hObject, eventdata, handles)
% hObject    handle to ed024 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed024 as text
%        str2double(get(hObject,'String')) returns contents of ed024 as a double


% --- Executes during object creation, after setting all properties.
function ed024_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed024 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed025_Callback(hObject, eventdata, handles)
% hObject    handle to ed025 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed025 as text
%        str2double(get(hObject,'String')) returns contents of ed025 as a double


% --- Executes during object creation, after setting all properties.
function ed025_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed025 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in tb031.
function tb031_Callback(hObject, eventdata, handles)
% hObject    handle to tb031 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(get(handles.tb031,'Value'))
    set(handles.tb031,'String','show');
    set(handles.tb031,'BackGroundColor','g')
else
    set(handles.tb031,'String','hide');
    set(handles.tb031,'BackGroundColor','r')
end
% Hint: get(hObject,'Value') returns toggle state of tb031



function ed031_Callback(hObject, eventdata, handles)
% hObject    handle to ed031 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(isempty(get(handles.ed031,'String')))
    set(handles.t032,'Visible','off');
    set(handles.ed032,'Visible','off');    
else
    set(handles.t032,'Visible','on');
    set(handles.ed032,'Visible','on');
end

if( isempty(get(handles.ed031,'String')) && isempty(get(handles.ed032,'String')))
    set(handles.tb041,'Visible','off');
    set(handles.t041,'Visible','off');
    set(handles.ed041,'Visible','off');
else
    
    set(handles.tb041,'Visible','on');
    set(handles.t041,'Visible','on');
    set(handles.ed041,'Visible','on');
end

global x03
if(~isempty(get(handles.ed031,'String')))
    x03 = get(handles.ed031,'String');
else
    x03 = [];
end
% Hints: get(hObject,'String') returns contents of ed031 as text
%        str2double(get(hObject,'String')) returns contents of ed031 as a double


% --- Executes during object creation, after setting all properties.
function ed031_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed031 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed032_Callback(hObject, eventdata, handles)
% hObject    handle to ed032 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(isempty(get(handles.ed032,'String')))
    set(handles.t033,'Visible','off');
    set(handles.t034,'Visible','off');
    set(handles.t035,'Visible','off');
    set(handles.ed033,'Visible','off');
    set(handles.ed034,'Visible','off');
    set(handles.ed035,'Visible','off');
    set(handles.ax031,'Visible','off');
else
    set(handles.t033,'Visible','on');
    set(handles.t034,'Visible','on');
    set(handles.t035,'Visible','on');
    set(handles.ed033,'Visible','on');
    set(handles.ed034,'Visible','on');
    set(handles.ed035,'Visible','on');
    set(handles.ax031,'Visible','on');
    plot(handles.ax031,[0,1],[0,0],'c');
end

if( isempty(get(handles.ed031,'String')) && isempty(get(handles.ed032,'String')))
    set(handles.tb041,'Visible','off');
    set(handles.t041,'Visible','off');
    set(handles.ed041,'Visible','off');
else
    
    set(handles.tb041,'Visible','on');
    set(handles.t041,'Visible','on');
    set(handles.ed041,'Visible','on');
end

global y03
if(~isempty(get(handles.ed032,'String')))
    y03 = get(handles.ed032,'String');
else
    y03 = [];
end
% Hints: get(hObject,'String') returns contents of ed032 as text
%        str2double(get(hObject,'String')) returns contents of ed032 as a double


% --- Executes during object creation, after setting all properties.
function ed032_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed032 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed033_Callback(hObject, eventdata, handles)
% hObject    handle to ed033 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed033 as text
%        str2double(get(hObject,'String')) returns contents of ed033 as a double


% --- Executes during object creation, after setting all properties.
function ed033_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed033 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed034_Callback(hObject, eventdata, handles)
% hObject    handle to ed034 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed034 as text
%        str2double(get(hObject,'String')) returns contents of ed034 as a double


% --- Executes during object creation, after setting all properties.
function ed034_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed034 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed035_Callback(hObject, eventdata, handles)
% hObject    handle to ed035 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed035 as text
%        str2double(get(hObject,'String')) returns contents of ed035 as a double


% --- Executes during object creation, after setting all properties.
function ed035_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed035 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in tb041.
function tb041_Callback(hObject, eventdata, handles)
% hObject    handle to tb041 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(get(handles.tb041,'Value'))
    set(handles.tb041,'String','show');
    set(handles.tb041,'BackGroundColor','g')
else
    set(handles.tb041,'String','hide');
    set(handles.tb041,'BackGroundColor','r')
end
% Hint: get(hObject,'Value') returns toggle state of tb041



function ed041_Callback(hObject, eventdata, handles)
% hObject    handle to ed041 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(isempty(get(handles.ed041,'String')))
    set(handles.t042,'Visible','off');
    set(handles.ed042,'Visible','off');    
else
    set(handles.t042,'Visible','on');
    set(handles.ed042,'Visible','on');
end

if( isempty(get(handles.ed041,'String')) && isempty(get(handles.ed042,'String')))
    set(handles.tb051,'Visible','off');
    set(handles.t051,'Visible','off');
    set(handles.ed051,'Visible','off');
else
    
    set(handles.tb051,'Visible','on');
    set(handles.t051,'Visible','on');
    set(handles.ed051,'Visible','on');
end

global x04
if(~isempty(get(handles.ed041,'String')))
    x04 = get(handles.ed041,'String');
else
    x04 = [];
end
% Hints: get(hObject,'String') returns contents of ed041 as text
%        str2double(get(hObject,'String')) returns contents of ed041 as a double


% --- Executes during object creation, after setting all properties.
function ed041_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed041 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed042_Callback(hObject, eventdata, handles)
% hObject    handle to ed042 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(isempty(get(handles.ed042,'String')))
    set(handles.t043,'Visible','off');
    set(handles.t044,'Visible','off');
    set(handles.t045,'Visible','off');
    set(handles.ed043,'Visible','off');
    set(handles.ed044,'Visible','off');
    set(handles.ed045,'Visible','off');
    set(handles.ax041,'Visible','off');
else
    set(handles.t043,'Visible','on');
    set(handles.t044,'Visible','on');
    set(handles.t045,'Visible','on');
    set(handles.ed043,'Visible','on');
    set(handles.ed044,'Visible','on');
    set(handles.ed045,'Visible','on');
    set(handles.ax041,'Visible','on');
    plot(handles.ax041,[0,1],[0,0],'g');
end

if( isempty(get(handles.ed041,'String')) && isempty(get(handles.ed042,'String')))
    set(handles.tb051,'Visible','off');
    set(handles.t051,'Visible','off');
    set(handles.ed051,'Visible','off');
else
    
    set(handles.tb051,'Visible','on');
    set(handles.t051,'Visible','on');
    set(handles.ed051,'Visible','on');
end

global y04
if(~isempty(get(handles.ed042,'String')))
    y04 = get(handles.ed042,'String');
else
    y04 = [];
end
% Hints: get(hObject,'String') returns contents of ed042 as text
%        str2double(get(hObject,'String')) returns contents of ed042 as a double


% --- Executes during object creation, after setting all properties.
function ed042_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed042 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed043_Callback(hObject, eventdata, handles)
% hObject    handle to ed043 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed043 as text
%        str2double(get(hObject,'String')) returns contents of ed043 as a double


% --- Executes during object creation, after setting all properties.
function ed043_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed043 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed044_Callback(hObject, eventdata, handles)
% hObject    handle to ed044 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed044 as text
%        str2double(get(hObject,'String')) returns contents of ed044 as a double


% --- Executes during object creation, after setting all properties.
function ed044_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed044 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed045_Callback(hObject, eventdata, handles)
% hObject    handle to ed045 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed045 as text
%        str2double(get(hObject,'String')) returns contents of ed045 as a double


% --- Executes during object creation, after setting all properties.
function ed045_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed045 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in tb051.
function tb051_Callback(hObject, eventdata, handles)
% hObject    handle to tb051 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(get(handles.tb051,'Value'))
    set(handles.tb051,'String','show');
    set(handles.tb051,'BackGroundColor','g')
else
    set(handles.tb051,'String','hide');
    set(handles.tb051,'BackGroundColor','r')
end
% Hint: get(hObject,'Value') returns toggle state of tb051



function ed051_Callback(hObject, eventdata, handles)
% hObject    handle to ed051 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(isempty(get(handles.ed051,'String')))
    set(handles.t052,'Visible','off');
    set(handles.ed052,'Visible','off');    
else
    set(handles.t052,'Visible','on');
    set(handles.ed052,'Visible','on');
end

if( isempty(get(handles.ed051,'String')) && isempty(get(handles.ed052,'String')))
    set(handles.tb061,'Visible','off');
    set(handles.t061,'Visible','off');
    set(handles.ed061,'Visible','off');
else
    
    set(handles.tb061,'Visible','on');
    set(handles.t061,'Visible','on');
    set(handles.ed061,'Visible','on');
end

global x05
if(~isempty(get(handles.ed051,'String')))
    x05 = get(handles.ed051,'String');
else
    x05 = [];
end
% Hints: get(hObject,'String') returns contents of ed051 as text
%        str2double(get(hObject,'String')) returns contents of ed051 as a double


% --- Executes during object creation, after setting all properties.
function ed051_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed051 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed052_Callback(hObject, eventdata, handles)
% hObject    handle to ed052 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(isempty(get(handles.ed052,'String')))
    set(handles.t053,'Visible','off');
    set(handles.t054,'Visible','off');
    set(handles.t055,'Visible','off');
    set(handles.ed053,'Visible','off');
    set(handles.ed054,'Visible','off');
    set(handles.ed055,'Visible','off');
    set(handles.ax051,'Visible','off');
else
    set(handles.t053,'Visible','on');
    set(handles.t054,'Visible','on');
    set(handles.t055,'Visible','on');
    set(handles.ed053,'Visible','on');
    set(handles.ed054,'Visible','on');
    set(handles.ed055,'Visible','on');
    set(handles.ax051,'Visible','on');
    plot(handles.ax051,[0,1],[0,0],'m');
end

if( isempty(get(handles.ed051,'String')) && isempty(get(handles.ed052,'String')))
    set(handles.tb061,'Visible','off');
    set(handles.t061,'Visible','off');
    set(handles.ed061,'Visible','off');
else
    
    set(handles.tb061,'Visible','on');
    set(handles.t061,'Visible','on');
    set(handles.ed061,'Visible','on');
end

global y05
if(~isempty(get(handles.ed052,'String')))
    y05 = get(handles.ed052,'String');
else
    y05 = [];
end
% Hints: get(hObject,'String') returns contents of ed052 as text
%        str2double(get(hObject,'String')) returns contents of ed052 as a double


% --- Executes during object creation, after setting all properties.
function ed052_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed052 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed053_Callback(hObject, eventdata, handles)
% hObject    handle to ed053 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed053 as text
%        str2double(get(hObject,'String')) returns contents of ed053 as a double


% --- Executes during object creation, after setting all properties.
function ed053_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed053 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed054_Callback(hObject, eventdata, handles)
% hObject    handle to ed054 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed054 as text
%        str2double(get(hObject,'String')) returns contents of ed054 as a double


% --- Executes during object creation, after setting all properties.
function ed054_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed054 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed055_Callback(hObject, eventdata, handles)
% hObject    handle to ed055 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed055 as text
%        str2double(get(hObject,'String')) returns contents of ed055 as a double


% --- Executes during object creation, after setting all properties.
function ed055_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed055 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in tb061.
function tb061_Callback(hObject, eventdata, handles)
% hObject    handle to tb061 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(get(handles.tb061,'Value'))
    set(handles.tb061,'String','show');
    set(handles.tb061,'BackGroundColor','g')
else
    set(handles.tb061,'String','hide');
    set(handles.tb061,'BackGroundColor','r')
end
% Hint: get(hObject,'Value') returns toggle state of tb061



function ed061_Callback(hObject, eventdata, handles)
% hObject    handle to ed061 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(isempty(get(handles.ed061,'String')))
    set(handles.t062,'Visible','off');
    set(handles.ed062,'Visible','off');    
else
    set(handles.t062,'Visible','on');
    set(handles.ed062,'Visible','on');
end

if( isempty(get(handles.ed061,'String')) && isempty(get(handles.ed062,'String')))
    set(handles.tb071,'Visible','off');
    set(handles.t071,'Visible','off');
    set(handles.ed071,'Visible','off');
else
    
    set(handles.tb071,'Visible','on');
    set(handles.t071,'Visible','on');
    set(handles.ed071,'Visible','on');
end

global x06
if(~isempty(get(handles.ed061,'String')))
    x06 = get(handles.ed061,'String');
else
    x06 = [];
end
% Hints: get(hObject,'String') returns contents of ed061 as text
%        str2double(get(hObject,'String')) returns contents of ed061 as a double


% --- Executes during object creation, after setting all properties.
function ed061_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed061 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed062_Callback(hObject, eventdata, handles)
% hObject    handle to ed062 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(isempty(get(handles.ed062,'String')))
    set(handles.t063,'Visible','off');
    set(handles.t064,'Visible','off');
    set(handles.t065,'Visible','off');
    set(handles.ed063,'Visible','off');
    set(handles.ed064,'Visible','off');
    set(handles.ed065,'Visible','off');
    set(handles.ax061,'Visible','off');
else
    set(handles.t063,'Visible','on');
    set(handles.t064,'Visible','on');
    set(handles.t065,'Visible','on');
    set(handles.ed063,'Visible','on');
    set(handles.ed064,'Visible','on');
    set(handles.ed065,'Visible','on');
    set(handles.ax061,'Visible','on');
    plot(handles.ax061,[0,1],[0,0],'k:');
end

if( isempty(get(handles.ed061,'String')) && isempty(get(handles.ed062,'String')))
    set(handles.tb071,'Visible','off');
    set(handles.t071,'Visible','off');
    set(handles.ed071,'Visible','off');
else
    
    set(handles.tb071,'Visible','on');
    set(handles.t071,'Visible','on');
    set(handles.ed071,'Visible','on');
end

global y06
if(~isempty(get(handles.ed062,'String')))
    y06 = get(handles.ed062,'String');
else
    y06 = [];
end
% Hints: get(hObject,'String') returns contents of ed062 as text
%        str2double(get(hObject,'String')) returns contents of ed062 as a double


% --- Executes during object creation, after setting all properties.
function ed062_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed062 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed063_Callback(hObject, eventdata, handles)
% hObject    handle to ed063 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed063 as text
%        str2double(get(hObject,'String')) returns contents of ed063 as a double


% --- Executes during object creation, after setting all properties.
function ed063_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed063 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed064_Callback(hObject, eventdata, handles)
% hObject    handle to ed064 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed064 as text
%        str2double(get(hObject,'String')) returns contents of ed064 as a double


% --- Executes during object creation, after setting all properties.
function ed064_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed064 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed065_Callback(hObject, eventdata, handles)
% hObject    handle to ed065 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed065 as text
%        str2double(get(hObject,'String')) returns contents of ed065 as a double


% --- Executes during object creation, after setting all properties.
function ed065_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed065 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in tb071.
function tb071_Callback(hObject, eventdata, handles)
% hObject    handle to tb071 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(get(handles.tb071,'Value'))
    set(handles.tb071,'String','show');
    set(handles.tb071,'BackGroundColor','g')
else
    set(handles.tb071,'String','hide');
    set(handles.tb071,'BackGroundColor','r')
end
% Hint: get(hObject,'Value') returns toggle state of tb071



function ed071_Callback(hObject, eventdata, handles)
% hObject    handle to ed071 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(isempty(get(handles.ed071,'String')))
    set(handles.t072,'Visible','off');
    set(handles.ed072,'Visible','off');    
else
    set(handles.t072,'Visible','on');
    set(handles.ed072,'Visible','on');
end

if( isempty(get(handles.ed071,'String')) && isempty(get(handles.ed072,'String')))
    set(handles.tb081,'Visible','off');
    set(handles.t081,'Visible','off');
    set(handles.ed081,'Visible','off');
else
    
    set(handles.tb081,'Visible','on');
    set(handles.t081,'Visible','on');
    set(handles.ed081,'Visible','on');
end

global x07
if(~isempty(get(handles.ed071,'String')))
    x07 = get(handles.ed071,'String');
else
    x07 = [];
end
% Hints: get(hObject,'String') returns contents of ed071 as text
%        str2double(get(hObject,'String')) returns contents of ed071 as a double


% --- Executes during object creation, after setting all properties.
function ed071_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed071 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed072_Callback(hObject, eventdata, handles)
% hObject    handle to ed072 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(isempty(get(handles.ed072,'String')))
    set(handles.t073,'Visible','off');
    set(handles.t074,'Visible','off');
    set(handles.t075,'Visible','off');
    set(handles.ed073,'Visible','off');
    set(handles.ed074,'Visible','off');
    set(handles.ed075,'Visible','off');
    set(handles.ax071,'Visible','off');
else
    set(handles.t073,'Visible','on');
    set(handles.t074,'Visible','on');
    set(handles.t075,'Visible','on');
    set(handles.ed073,'Visible','on');
    set(handles.ed074,'Visible','on');
    set(handles.ed075,'Visible','on');
    set(handles.ax071,'Visible','on');
    plot(handles.ax071,[0,1],[0,0],'k');
end

if( isempty(get(handles.ed071,'String')) && isempty(get(handles.ed072,'String')))
    set(handles.tb081,'Visible','off');
    set(handles.t081,'Visible','off');
    set(handles.ed081,'Visible','off');
else
    
    set(handles.tb081,'Visible','on');
    set(handles.t081,'Visible','on');
    set(handles.ed081,'Visible','on');
end

global y07
if(~isempty(get(handles.ed072,'String')))
    y07 = get(handles.ed072,'String');
else
    y07 = [];
end
% Hints: get(hObject,'String') returns contents of ed072 as text
%        str2double(get(hObject,'String')) returns contents of ed072 as a double


% --- Executes during object creation, after setting all properties.
function ed072_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed072 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed073_Callback(hObject, eventdata, handles)
% hObject    handle to ed073 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed073 as text
%        str2double(get(hObject,'String')) returns contents of ed073 as a double


% --- Executes during object creation, after setting all properties.
function ed073_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed073 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed074_Callback(hObject, eventdata, handles)
% hObject    handle to ed074 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed074 as text
%        str2double(get(hObject,'String')) returns contents of ed074 as a double


% --- Executes during object creation, after setting all properties.
function ed074_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed074 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed075_Callback(hObject, eventdata, handles)
% hObject    handle to ed075 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed075 as text
%        str2double(get(hObject,'String')) returns contents of ed075 as a double


% --- Executes during object creation, after setting all properties.
function ed075_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed075 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in tb081.
function tb081_Callback(hObject, eventdata, handles)
% hObject    handle to tb081 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(get(handles.tb081,'Value'))
    set(handles.tb081,'String','show');
    set(handles.tb081,'BackGroundColor','g')
else
    set(handles.tb081,'String','hide');
    set(handles.tb081,'BackGroundColor','r')
end
% Hint: get(hObject,'Value') returns toggle state of tb081



function ed081_Callback(hObject, eventdata, handles)
% hObject    handle to ed081 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(isempty(get(handles.ed081,'String')))
    set(handles.t082,'Visible','off');
    set(handles.ed082,'Visible','off');    
else
    set(handles.t082,'Visible','on');
    set(handles.ed082,'Visible','on');
end

if( isempty(get(handles.ed081,'String')) && isempty(get(handles.ed082,'String')))
    set(handles.tb091,'Visible','off');
    set(handles.t091,'Visible','off');
    set(handles.ed091,'Visible','off');
else
    
    set(handles.tb091,'Visible','on');
    set(handles.t091,'Visible','on');
    set(handles.ed091,'Visible','on');
end

global x08
if(~isempty(get(handles.ed081,'String')))
    x08 = get(handles.ed081,'String');
else
    x08 = [];
end
% Hints: get(hObject,'String') returns contents of ed081 as text
%        str2double(get(hObject,'String')) returns contents of ed081 as a double


% --- Executes during object creation, after setting all properties.
function ed081_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed081 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed082_Callback(hObject, eventdata, handles)
% hObject    handle to ed082 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(isempty(get(handles.ed082,'String')))
    set(handles.t083,'Visible','off');
    set(handles.t084,'Visible','off');
    set(handles.t085,'Visible','off');
    set(handles.ed083,'Visible','off');
    set(handles.ed084,'Visible','off');
    set(handles.ed085,'Visible','off');
    set(handles.ax081,'Visible','off');
else
    set(handles.t083,'Visible','on');
    set(handles.t084,'Visible','on');
    set(handles.t085,'Visible','on');
    set(handles.ed083,'Visible','on');
    set(handles.ed084,'Visible','on');
    set(handles.ed085,'Visible','on');
    set(handles.ax081,'Visible','on');
    plot(handles.ax081,[0,1],[0,0],'b:');
end

if( isempty(get(handles.ed081,'String')) && isempty(get(handles.ed082,'String')))
    set(handles.tb091,'Visible','off');
    set(handles.t091,'Visible','off');
    set(handles.ed091,'Visible','off');
else
    
    set(handles.tb091,'Visible','on');
    set(handles.t091,'Visible','on');
    set(handles.ed091,'Visible','on');
end

global y08
if(~isempty(get(handles.ed082,'String')))
    y08 = get(handles.ed082,'String');
else
    y08 = [];
end
% Hints: get(hObject,'String') returns contents of ed082 as text
%        str2double(get(hObject,'String')) returns contents of ed082 as a double


% --- Executes during object creation, after setting all properties.
function ed082_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed082 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed083_Callback(hObject, eventdata, handles)
% hObject    handle to ed083 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed083 as text
%        str2double(get(hObject,'String')) returns contents of ed083 as a double


% --- Executes during object creation, after setting all properties.
function ed083_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed083 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed084_Callback(hObject, eventdata, handles)
% hObject    handle to ed084 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed084 as text
%        str2double(get(hObject,'String')) returns contents of ed084 as a double


% --- Executes during object creation, after setting all properties.
function ed084_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed084 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed085_Callback(hObject, eventdata, handles)
% hObject    handle to ed085 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed085 as text
%        str2double(get(hObject,'String')) returns contents of ed085 as a double


% --- Executes during object creation, after setting all properties.
function ed085_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed085 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in tb091.
function tb091_Callback(hObject, eventdata, handles)
% hObject    handle to tb091 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(get(handles.tb091,'Value'))
    set(handles.tb091,'String','show');
    set(handles.tb091,'BackGroundColor','g')
else
    set(handles.tb091,'String','hide');
    set(handles.tb091,'BackGroundColor','r')
end
% Hint: get(hObject,'Value') returns toggle state of tb091



function ed091_Callback(hObject, eventdata, handles)
% hObject    handle to ed091 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(isempty(get(handles.ed091,'String')))
    set(handles.t092,'Visible','off');
    set(handles.ed092,'Visible','off');    
else
    set(handles.t092,'Visible','on');
    set(handles.ed092,'Visible','on');
end

if( isempty(get(handles.ed091,'String')) && isempty(get(handles.ed092,'String')))
    set(handles.tb101,'Visible','off');
    set(handles.t101,'Visible','off');
    set(handles.ed101,'Visible','off');
else
    
    set(handles.tb101,'Visible','on');
    set(handles.t101,'Visible','on');
    set(handles.ed101,'Visible','on');
end

global x09
if(~isempty(get(handles.ed091,'String')))
    x09 = get(handles.ed091,'String');
else
    x09 = [];
end
% Hints: get(hObject,'String') returns contents of ed091 as text
%        str2double(get(hObject,'String')) returns contents of ed091 as a double


% --- Executes during object creation, after setting all properties.
function ed091_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed091 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed092_Callback(hObject, eventdata, handles)
% hObject    handle to ed092 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(isempty(get(handles.ed092,'String')))
    set(handles.t093,'Visible','off');
    set(handles.t094,'Visible','off');
    set(handles.t095,'Visible','off');
    set(handles.ed093,'Visible','off');
    set(handles.ed094,'Visible','off');
    set(handles.ed095,'Visible','off');
    set(handles.ax091,'Visible','off');
else
    set(handles.t093,'Visible','on');
    set(handles.t094,'Visible','on');
    set(handles.t095,'Visible','on');
    set(handles.ed093,'Visible','on');
    set(handles.ed094,'Visible','on');
    set(handles.ed095,'Visible','on');
    set(handles.ax091,'Visible','on');
    plot(handles.ax091,[0,1],[0,0],'r:');
end

if( isempty(get(handles.ed091,'String')) && isempty(get(handles.ed092,'String')))
    set(handles.tb101,'Visible','off');
    set(handles.t101,'Visible','off');
    set(handles.ed101,'Visible','off');
else
    
    set(handles.tb101,'Visible','on');
    set(handles.t101,'Visible','on');
    set(handles.ed101,'Visible','on');
end

global y09
if(~isempty(get(handles.ed092,'String')))
    y09 = get(handles.ed092,'String');
else
    y09 = [];
end
% Hints: get(hObject,'String') returns contents of ed092 as text
%        str2double(get(hObject,'String')) returns contents of ed092 as a double


% --- Executes during object creation, after setting all properties.
function ed092_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed092 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed093_Callback(hObject, eventdata, handles)
% hObject    handle to ed093 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed093 as text
%        str2double(get(hObject,'String')) returns contents of ed093 as a double


% --- Executes during object creation, after setting all properties.
function ed093_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed093 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed094_Callback(hObject, eventdata, handles)
% hObject    handle to ed094 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed094 as text
%        str2double(get(hObject,'String')) returns contents of ed094 as a double


% --- Executes during object creation, after setting all properties.
function ed094_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed094 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed095_Callback(hObject, eventdata, handles)
% hObject    handle to ed095 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed095 as text
%        str2double(get(hObject,'String')) returns contents of ed095 as a double


% --- Executes during object creation, after setting all properties.
function ed095_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed095 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in tb101.
function tb101_Callback(hObject, eventdata, handles)
% hObject    handle to tb101 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(get(handles.tb101,'Value'))
    set(handles.tb101,'String','show');
    set(handles.tb101,'BackGroundColor','g')
else
    set(handles.tb101,'String','hide');
    set(handles.tb101,'BackGroundColor','r')
end
% Hint: get(hObject,'Value') returns toggle state of tb101



function ed101_Callback(hObject, eventdata, handles)
% hObject    handle to ed101 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(isempty(get(handles.ed101,'String')))
    set(handles.t102,'Visible','off');
    set(handles.ed102,'Visible','off');    
else
    set(handles.t102,'Visible','on');
    set(handles.ed102,'Visible','on');
end

global x10
if(~isempty(get(handles.ed101,'String')))
    x10 = get(handles.ed101,'String');
else
    x10 = [];
end
% Hints: get(hObject,'String') returns contents of ed101 as text
%        str2double(get(hObject,'String')) returns contents of ed101 as a double


% --- Executes during object creation, after setting all properties.
function ed101_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed101 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed102_Callback(hObject, eventdata, handles)
% hObject    handle to ed102 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(isempty(get(handles.ed102,'String')))
    set(handles.t103,'Visible','off');
    set(handles.t104,'Visible','off');
    set(handles.t105,'Visible','off');
    set(handles.ed103,'Visible','off');
    set(handles.ed104,'Visible','off');
    set(handles.ed105,'Visible','off');
    set(handles.ax101,'Visible','off');
else
    set(handles.t103,'Visible','on');
    set(handles.t104,'Visible','on');
    set(handles.t105,'Visible','on');
    set(handles.ed103,'Visible','on');
    set(handles.ed104,'Visible','on');
    set(handles.ed105,'Visible','on');
    set(handles.ax101,'Visible','on');
    plot(handles.ax101,[0,1],[0,0],'c:');
end

global y10
if(~isempty(get(handles.ed102,'String')))
    y10 = get(handles.ed102,'String');
else
    y10 = [];
end
% Hints: get(hObject,'String') returns contents of ed102 as text
%        str2double(get(hObject,'String')) returns contents of ed102 as a double


% --- Executes during object creation, after setting all properties.
function ed102_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed102 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed103_Callback(hObject, eventdata, handles)
% hObject    handle to ed103 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed103 as text
%        str2double(get(hObject,'String')) returns contents of ed103 as a double


% --- Executes during object creation, after setting all properties.
function ed103_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed103 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed104_Callback(hObject, eventdata, handles)
% hObject    handle to ed104 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed104 as text
%        str2double(get(hObject,'String')) returns contents of ed104 as a double


% --- Executes during object creation, after setting all properties.
function ed104_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed104 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed105_Callback(hObject, eventdata, handles)
% hObject    handle to ed105 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed105 as text
%        str2double(get(hObject,'String')) returns contents of ed105 as a double


% --- Executes during object creation, after setting all properties.
function ed105_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed105 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in clear.
function clear_Callback(hObject, eventdata, handles)
% hObject    handle to clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.ax0)

% --- Executes on button press in plot.
function plot_Callback(hObject, eventdata, handles)
% hObject    handle to plot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc
cla(handles.ax0)
global x01 %通过全局变量获得变量名
global x02 %通过全局变量获得变量名
global x03 %通过全局变量获得变量名
global x04 %通过全局变量获得变量名
global x05 %通过全局变量获得变量名
global x06 %通过全局变量获得变量名
global x07 %通过全局变量获得变量名
global x08 %通过全局变量获得变量名
global x09 %通过全局变量获得变量名
global x10 %通过全局变量获得变量名

global y01 %通过全局变量获得变量名
global y02 %通过全局变量获得变量名
global y03 %通过全局变量获得变量名
global y04 %通过全局变量获得变量名
global y05 %通过全局变量获得变量名
global y06 %通过全局变量获得变量名
global y07 %通过全局变量获得变量名
global y08 %通过全局变量获得变量名
global y09 %通过全局变量获得变量名
global y10 %通过全局变量获得变量名

global CmdStr
global str1
global str2
global str3
global str4
global str5
global str6
global str7
global str8
global str9
global str10
global CMD1

global Legend
global legend1
global legend2
global legend3
global legend4
global legend5
global legend6
global legend7
global legend8
global legend9
global legend10
global CMD2

%打印第 1 组数据
if( ~isempty(get(handles.ed011,'String')) && ~isempty(get(handles.ed012,'String')))
    x = evalin('base',x01); %读Workspace数据
    y = evalin('base',y01);%读Workspace数据
    scale_cell = get(handles.ed013,'String');
    offsetX_cell = get(handles.ed014,'String');
    offsetY_cell = get(handles.ed015,'String');

    if(~isempty(scale_cell))
        scale = str2num(scale_cell);
        ychg = y * scale;
        %拼接命令
        if( scale ~= 1 )
            str1 = strcat(x01,',',y01,'*',sprintf('%.2f',scale));
            legend1 = strcat(y01,'*',sprintf('%.2f',scale));
        else
            str1 = strcat(x01,',',y01);
            legend1 = strcat(y01);
        end
    end
    if(~isempty(offsetX_cell))
        offsetX = str2num(offsetX_cell);
        xchg = x + offsetX;
        %拼接命令
        if( offsetX ~= 0)
            Xlabel = strcat(x01,'+','(',sprintf('%.2f',offsetX),')');
            if( scale ~= 1 )
                str1 = strcat(Xlabel,',',y01,'*',sprintf('%.2f',scale));
            else
                str1 = strcat(Xlabel,',',y01);
            end
        end
    end
    if(~isempty(offsetY_cell))
        offsetY = str2num(offsetY_cell);
        ychg = ychg + offsetY;
        %拼接命令
        if( offsetY ~= 0 )
            str1 = strcat(str1,'+','(',sprintf('%.2f',offsetY),')',',','''b''');
            legend1 = strcat(legend1,'+',sprintf('(%.2f)',offsetY));
        else
            str1 = strcat(str1,',','''b''');
        end
    end
    handle = plot(handles.ax0,xchg,ychg,'b');
    visible = get(handles.tb011,'Value');
    if(visible)
        set(handle,'Visible','on');
    else
        set(handle,'Visible','off');
    end
end

%打印第 2 组数据
if( ~isempty(get(handles.ed021,'String')) && ~isempty(get(handles.ed022,'String')))
    x = evalin('base',x02); %读Workspace数据
    y = evalin('base',y02);%读Workspace数据
    scale_cell = get(handles.ed023,'String');
    offsetX_cell = get(handles.ed024,'String');
    offsetY_cell = get(handles.ed025,'String');

    if(~isempty(scale_cell))
        scale = str2num(scale_cell);
        ychg = y * scale;
        %拼接命令
        if( scale ~= 1 )
            str2 = strcat(x02,',',y02,'*',sprintf('%.2f',scale));
            legend2 = strcat(y02,'*',sprintf('%.2f',scale));
        else
            str2 = strcat(x02,',',y02);
            legend2 = strcat(y02);
        end
    end
    if(~isempty(offsetX_cell))
        offsetX = str2num(offsetX_cell);
        xchg = x + offsetX;
        %拼接命令
        if( offsetX ~= 0)
            Xlabel = strcat(x02,'+','(',sprintf('%.2f',offsetX),')');
            if( scale ~= 1 )
                str2 = strcat(Xlabel,',',y02,'*',sprintf('%.2f',scale));
            else
                str2 = strcat(Xlabel,',',y02);
            end
        end
    end
    if(~isempty(offsetY_cell))
        offsetY = str2num(offsetY_cell);
        ychg = ychg + offsetY;
        %拼接命令
        if( offsetY ~= 0 )
            str2 = strcat(str2,'+','(',sprintf('%.2f',offsetY),')',',','''r''');
            legend2 = strcat(legend2,'+',sprintf('(%.2f)',offsetY));
        else
            str2 = strcat(str2,',','''r''');
        end
    end
    handle = plot(handles.ax0,xchg,ychg,'r');
    visible = get(handles.tb021,'Value');
    if(visible)
        set(handle,'Visible','on');
    else
        set(handle,'Visible','off');
    end
end

%打印第 3 组数据
if( ~isempty(get(handles.ed031,'String')) && ~isempty(get(handles.ed032,'String')))% 2处
    x = evalin('base',x03);% 1处
    y = evalin('base',y03);% 1处
    scale_cell = get(handles.ed033,'String');% 1处
    offsetX_cell = get(handles.ed034,'String');% 1处
    offsetY_cell = get(handles.ed035,'String');% 1处

    if(~isempty(scale_cell))
        scale = str2num(scale_cell);
        ychg = y * scale;
        %拼接命令
        if( scale ~= 1 )
            str3 = strcat(x03,',',y03,'*',sprintf('%.2f',scale));% 3处
            legend3 = strcat(y03,'*',sprintf('%.2f',scale));% 2处
        else
            str3 = strcat(x03,',',y03);% 3处
            legend3 = strcat(y03);% 2处
        end
    end
    if(~isempty(offsetX_cell))
        offsetX = str2num(offsetX_cell);
        xchg = x + offsetX;
        %拼接命令
        if( offsetX ~= 0)
            Xlabel = strcat(x03,'+','(',sprintf('%.2f',offsetX),')');% 1处
            if( scale ~= 1 )
                str3 = strcat(Xlabel,',',y03,'*',sprintf('%.2f',scale));% 2处
            else
                str3 = strcat(Xlabel,',',y03);% 2处
            end
        end
    end
    if(~isempty(offsetY_cell))
        offsetY = str2num(offsetY_cell);
        ychg = ychg + offsetY;
        %拼接命令
        if( offsetY ~= 0 )
            str3 = strcat(str3,'+','(',sprintf('%.2f',offsetY),')',',','''c''');% 2处 1处颜色
            legend3 = strcat(legend3,'+',sprintf('(%.2f)',offsetY));% 2处
        else
            str3 = strcat(str3,',','''c''');% 2处 1处颜色
        end
    end
    handle = plot(handles.ax0,xchg,ychg,'c');%1处颜色
    visible = get(handles.tb031,'Value');% 1处 
    if(visible)
        set(handle,'Visible','on');
    else
        set(handle,'Visible','off');
    end
end

%打印第 4 组数据
if( ~isempty(get(handles.ed041,'String')) && ~isempty(get(handles.ed042,'String')))% 2处
    x = evalin('base',x04);% 1处
    y = evalin('base',y04);% 1处
    scale_cell = get(handles.ed043,'String');% 1处
    offsetX_cell = get(handles.ed044,'String');% 1处
    offsetY_cell = get(handles.ed045,'String');% 1处

    if(~isempty(scale_cell))
        scale = str2num(scale_cell);
        ychg = y * scale;
        %拼接命令
        if( scale ~= 1 )
            str4 = strcat(x04,',',y04,'*',sprintf('%.2f',scale));% 3处
            legend4 = strcat(y04,'*',sprintf('%.2f',scale));% 2处
        else
            str4 = strcat(x04,',',y04);% 3处
            legend4 = strcat(y04);% 2处
        end
    end
    if(~isempty(offsetX_cell))
        offsetX = str2num(offsetX_cell);
        xchg = x + offsetX;
        %拼接命令
        if( offsetX ~= 0)
            Xlabel = strcat(x04,'+','(',sprintf('%.2f',offsetX),')');% 1处
            if( scale ~= 1 )
                str4 = strcat(Xlabel,',',y04,'*',sprintf('%.2f',scale));% 2处
            else
                str4 = strcat(Xlabel,',',y04);% 2处
            end
        end
    end
    if(~isempty(offsetY_cell))
        offsetY = str2num(offsetY_cell);
        ychg = ychg + offsetY;
        %拼接命令
        if( offsetY ~= 0 )
            str4 = strcat(str4,'+','(',sprintf('%.2f',offsetY),')',',','''g''');% 2处 1处颜色
            legend4 = strcat(legend4,'+',sprintf('(%.2f)',offsetY));% 2处
        else
            str4 = strcat(str4,',','''g''');% 2处 1处颜色
        end
    end
    handle = plot(handles.ax0,xchg,ychg,'g');%1处颜色
    visible = get(handles.tb041,'Value');% 1处 
    if(visible)
        set(handle,'Visible','on');
    else
        set(handle,'Visible','off');
    end
end

%打印第 5 组数据
if( ~isempty(get(handles.ed051,'String')) && ~isempty(get(handles.ed052,'String')))% 2处
    x = evalin('base',x05);% 1处
    y = evalin('base',y05);% 1处
    scale_cell = get(handles.ed053,'String');% 1处
    offsetX_cell = get(handles.ed054,'String');% 1处
    offsetY_cell = get(handles.ed055,'String');% 1处

    if(~isempty(scale_cell))
        scale = str2num(scale_cell);
        ychg = y * scale;
        %拼接命令
        if( scale ~= 1 )
            str5 = strcat(x05,',',y05,'*',sprintf('%.2f',scale));% 3处
            legend5 = strcat(y05,'*',sprintf('%.2f',scale));% 2处
        else
            str5 = strcat(x05,',',y05);% 3处
            legend5 = strcat(y05);% 2处
        end
    end
    if(~isempty(offsetX_cell))
        offsetX = str2num(offsetX_cell);
        xchg = x + offsetX;
        %拼接命令
        if( offsetX ~= 0)
            Xlabel = strcat(x05,'+','(',sprintf('%.2f',offsetX),')');% 1处
            if( scale ~= 1 )
                str5 = strcat(Xlabel,',',y05,'*',sprintf('%.2f',scale));% 2处
            else
                str5 = strcat(Xlabel,',',y05);% 2处
            end
        end
    end
    if(~isempty(offsetY_cell))
        offsetY = str2num(offsetY_cell);
        ychg = ychg + offsetY;
        %拼接命令
        if( offsetY ~= 0 )
            str5 = strcat(str5,'+','(',sprintf('%.2f',offsetY),')',',','''m''');% 2处 1处颜色
            legend5 = strcat(legend5,'+',sprintf('(%.2f)',offsetY));% 2处
        else
            str5 = strcat(str5,',','''m''');% 2处 1处颜色
        end
    end
    handle = plot(handles.ax0,xchg,ychg,'m');%1处颜色
    visible = get(handles.tb051,'Value');% 1处 
    if(visible)
        set(handle,'Visible','on');
    else
        set(handle,'Visible','off');
    end
end

%打印第 6 组数据
if( ~isempty(get(handles.ed061,'String')) && ~isempty(get(handles.ed062,'String')))% 2处
    x = evalin('base',x06);% 1处
    y = evalin('base',y06);% 1处
    scale_cell = get(handles.ed063,'String');% 1处
    offsetX_cell = get(handles.ed064,'String');% 1处
    offsetY_cell = get(handles.ed065,'String');% 1处

    if(~isempty(scale_cell))
        scale = str2num(scale_cell);
        ychg = y * scale;
        %拼接命令
        if( scale ~= 1 )
            str6 = strcat(x06,',',y06,'*',sprintf('%.2f',scale));% 3处
            legend6 = strcat(y06,'*',sprintf('%.2f',scale));% 2处
        else
            str6 = strcat(x06,',',y06);% 3处
            legend6 = strcat(y06);% 2处
        end
    end
    if(~isempty(offsetX_cell))
        offsetX = str2num(offsetX_cell);
        xchg = x + offsetX;
        %拼接命令
        if( offsetX ~= 0)
            Xlabel = strcat(x06,'+','(',sprintf('%.2f',offsetX),')');% 1处
            if( scale ~= 1 )
                str6 = strcat(Xlabel,',',y06,'*',sprintf('%.2f',scale));% 2处
            else
                str6 = strcat(Xlabel,',',y06);% 2处
            end
        end
    end
    if(~isempty(offsetY_cell))
        offsetY = str2num(offsetY_cell);
        ychg = ychg + offsetY;
        %拼接命令
        if( offsetY ~= 0 )
            str6 = strcat(str6,'+','(',sprintf('%.2f',offsetY),')',',','''k:''');% 2处 1处颜色
            legend6 = strcat(legend6,'+',sprintf('(%.2f)',offsetY));% 2处
        else
            str6 = strcat(str6,',','''k:''');% 2处 1处颜色
        end
    end
    handle = plot(handles.ax0,xchg,ychg,'k:');%1处颜色
    visible = get(handles.tb061,'Value');% 1处 
    if(visible)
        set(handle,'Visible','on');
    else
        set(handle,'Visible','off');
    end
end

%打印第 7 组数据
if( ~isempty(get(handles.ed071,'String')) && ~isempty(get(handles.ed072,'String')))% 2处
    x = evalin('base',x07);% 1处
    y = evalin('base',y07);% 1处
    scale_cell = get(handles.ed073,'String');% 1处
    offsetX_cell = get(handles.ed074,'String');% 1处
    offsetY_cell = get(handles.ed075,'String');% 1处

    if(~isempty(scale_cell))
        scale = str2num(scale_cell);
        ychg = y * scale;
        %拼接命令
        if( scale ~= 1 )
            str7 = strcat(x07,',',y07,'*',sprintf('%.2f',scale));% 3处
            legend7 = strcat(y07,'*',sprintf('%.2f',scale));% 2处
        else
            str7 = strcat(x07,',',y07);% 3处
            legend7 = strcat(y07);% 2处
        end
    end
    if(~isempty(offsetX_cell))
        offsetX = str2num(offsetX_cell);
        xchg = x + offsetX;
        %拼接命令
        if( offsetX ~= 0)
            Xlabel = strcat(x07,'+','(',sprintf('%.2f',offsetX),')');% 1处
            if( scale ~= 1 )
                str7 = strcat(Xlabel,',',y07,'*',sprintf('%.2f',scale));% 2处
            else
                str7 = strcat(Xlabel,',',y07);% 2处
            end
        end
    end
    if(~isempty(offsetY_cell))
        offsetY = str2num(offsetY_cell);
        ychg = ychg + offsetY;
        %拼接命令
        if( offsetY ~= 0 )
            str7 = strcat(str7,'+','(',sprintf('%.2f',offsetY),')',',','''k''');% 2处 1处颜色
            legend7 = strcat(legend7,'+',sprintf('(%.2f)',offsetY));% 2处
        else
            str7 = strcat(str7,',','''k''');% 2处 1处颜色
        end
    end
    handle = plot(handles.ax0,xchg,ychg,'k');%1处颜色
    visible = get(handles.tb071,'Value');% 1处 
    if(visible)
        set(handle,'Visible','on');
    else
        set(handle,'Visible','off');
    end
end

%打印第 8 组数据
if( ~isempty(get(handles.ed081,'String')) && ~isempty(get(handles.ed082,'String')))% 2处
    x = evalin('base',x08);% 1处
    y = evalin('base',y08);% 1处
    scale_cell = get(handles.ed083,'String');% 1处
    offsetX_cell = get(handles.ed084,'String');% 1处
    offsetY_cell = get(handles.ed085,'String');% 1处

    if(~isempty(scale_cell))
        scale = str2num(scale_cell);
        ychg = y * scale;
        %拼接命令
        if( scale ~= 1 )
            str8 = strcat(x08,',',y08,'*',sprintf('%.2f',scale));% 3处
            legend8 = strcat(y08,'*',sprintf('%.2f',scale));% 2处
        else
            str8 = strcat(x08,',',y08);% 3处
            legend8 = strcat(y08);% 2处
        end
    end
    if(~isempty(offsetX_cell))
        offsetX = str2num(offsetX_cell);
        xchg = x + offsetX;
        %拼接命令
        if( offsetX ~= 0)
            Xlabel = strcat(x08,'+','(',sprintf('%.2f',offsetX),')');% 1处
            if( scale ~= 1 )
                str8 = strcat(Xlabel,',',y08,'*',sprintf('%.2f',scale));% 2处
            else
                str8 = strcat(Xlabel,',',y08);% 2处
            end
        end
    end
    if(~isempty(offsetY_cell))
        offsetY = str2num(offsetY_cell);
        ychg = ychg + offsetY;
        %拼接命令
        if( offsetY ~= 0 )
            str8 = strcat(str8,'+','(',sprintf('%.2f',offsetY),')',',','''b:''');% 2处 1处颜色
            legend8 = strcat(legend8,'+',sprintf('(%.2f)',offsetY));% 2处
        else
            str8 = strcat(str8,',','''b:''');% 2处 1处颜色
        end
    end
    handle = plot(handles.ax0,xchg,ychg,'b:');%1处颜色
    visible = get(handles.tb081,'Value');% 1处 
    if(visible)
        set(handle,'Visible','on');
    else
        set(handle,'Visible','off');
    end
end

%打印第 9 组数据
if( ~isempty(get(handles.ed091,'String')) && ~isempty(get(handles.ed092,'String')))% 2处
    x = evalin('base',x09);% 1处
    y = evalin('base',y09);% 1处
    scale_cell = get(handles.ed093,'String');% 1处
    offsetX_cell = get(handles.ed094,'String');% 1处
    offsetY_cell = get(handles.ed095,'String');% 1处

    if(~isempty(scale_cell))
        scale = str2num(scale_cell);
        ychg = y * scale;
        %拼接命令
        if( scale ~= 1 )
            str9 = strcat(x09,',',y09,'*',sprintf('%.2f',scale));% 3处
            legend9 = strcat(y09,'*',sprintf('%.2f',scale));% 2处
        else
            str9 = strcat(x09,',',y09);% 3处
            legend9 = strcat(y09);% 2处
        end
    end
    if(~isempty(offsetX_cell))
        offsetX = str2num(offsetX_cell);
        xchg = x + offsetX;
        %拼接命令
        if( offsetX ~= 0)
            Xlabel = strcat(x09,'+','(',sprintf('%.2f',offsetX),')');% 1处
            if( scale ~= 1 )
                str9 = strcat(Xlabel,',',y09,'*',sprintf('%.2f',scale));% 2处
            else
                str9 = strcat(Xlabel,',',y09);% 2处
            end
        end
    end
    if(~isempty(offsetY_cell))
        offsetY = str2num(offsetY_cell);
        ychg = ychg + offsetY;
        %拼接命令
        if( offsetY ~= 0 )
            str9 = strcat(str9,'+','(',sprintf('%.2f',offsetY),')',',','''r:''');% 2处 1处颜色
            legend9 = strcat(legend9,'+',sprintf('(%.2f)',offsetY));% 2处
        else
            str9 = strcat(str9,',','''r:''');% 2处 1处颜色
        end
    end
    handle = plot(handles.ax0,xchg,ychg,'r:');%1处颜色
    visible = get(handles.tb091,'Value');% 1处 
    if(visible)
        set(handle,'Visible','on');
    else
        set(handle,'Visible','off');
    end
end

%打印第 10 组数据
if( ~isempty(get(handles.ed101,'String')) && ~isempty(get(handles.ed102,'String')))% 2处
    x = evalin('base',x10);% 1处
    y = evalin('base',y10);% 1处
    scale_cell = get(handles.ed103,'String');% 1处
    offsetX_cell = get(handles.ed104,'String');% 1处
    offsetY_cell = get(handles.ed105,'String');% 1处

    if(~isempty(scale_cell))
        scale = str2num(scale_cell);
        ychg = y * scale;
        %拼接命令
        if( scale ~= 1 )
            str10 = strcat(x10,',',y10,'*',sprintf('%.2f',scale));% 3处
            legend10 = strcat(y10,'*',sprintf('%.2f',scale));% 2处
        else
            str10 = strcat(x10,',',y10);% 3处
            legend10 = strcat(y10);% 2处
        end
    end
    if(~isempty(offsetX_cell))
        offsetX = str2num(offsetX_cell);
        xchg = x + offsetX;
        %拼接命令
        if( offsetX ~= 0)
            Xlabel = strcat(x10,'+','(',sprintf('%.2f',offsetX),')');% 1处
            if( scale ~= 1 )
                str10 = strcat(Xlabel,',',y10,'*',sprintf('%.2f',scale));% 2处
            else
                str10 = strcat(Xlabel,',',y10);% 2处
            end
        end
    end
    if(~isempty(offsetY_cell))
        offsetY = str2num(offsetY_cell);
        ychg = ychg + offsetY;
        %拼接命令
        if( offsetY ~= 0 )
            str10 = strcat(str10,'+','(',sprintf('%.2f',offsetY),')',',','''c:''');% 2处 1处颜色
            legend10 = strcat(legend10,'+',sprintf('(%.2f)',offsetY));% 2处
        else
            str10 = strcat(str10,',','''c:''');% 2处 1处颜色
        end
    end
    handle = plot(handles.ax0,xchg,ychg,'c:');%1处颜色
    visible = get(handles.tb101,'Value');% 1处 
    if(visible)
        set(handle,'Visible','on');
    else
        set(handle,'Visible','off');
    end
end

%拼接命令
CmdStr = 'No Command';
Legend = 'No Legend';
if( ~isempty(get(handles.ed011,'String')) && ~isempty(get(handles.ed012,'String')) )
    if(get(handles.tb011,'Value'))
        CmdStr = str1;
        Legend = strcat('''',legend1,'''');
    else
        CmdStr = CmdStr;
        Legend = Legend;
    end
end
if( ~isempty(get(handles.ed021,'String')) && ~isempty(get(handles.ed022,'String')) )
    if(get(handles.tb021,'Value'))
        if(strcmp(CmdStr,'No Command'))
            CmdStr = str2;
            Legend = strcat('''',legend2,'''');
        else
            CmdStr = strcat(CmdStr,',',str2);
            Legend = strcat(Legend,',','''',legend2,'''');
        end
    else
        CmdStr = CmdStr;
        Legend = Legend;
    end
end
if( ~isempty(get(handles.ed031,'String')) && ~isempty(get(handles.ed032,'String')) )
    if(get(handles.tb031,'Value'))
        if(strcmp(CmdStr,'No Command'))
            CmdStr = str3;
            Legend = strcat('''',legend3,'''');
        else
            CmdStr = strcat(CmdStr,',',str3);
            Legend = strcat(Legend,',','''',legend3,'''');
        end
    else
        CmdStr = CmdStr;
        Legend = Legend;
    end
end
if( ~isempty(get(handles.ed041,'String')) && ~isempty(get(handles.ed042,'String')) )
    if(get(handles.tb041,'Value'))
        if(strcmp(CmdStr,'No Command'))
            CmdStr = str4;
            Legend = strcat('''',legend4,'''');
        else
            CmdStr = strcat(CmdStr,',',str4);
            Legend = strcat(Legend,',','''',legend4,'''');
        end
    else
        CmdStr = CmdStr;
        Legend = Legend;
    end
end
if( ~isempty(get(handles.ed051,'String')) && ~isempty(get(handles.ed052,'String')) )
    if(get(handles.tb051,'Value'))
        if(strcmp(CmdStr,'No Command'))
            CmdStr = str5;
            Legend = strcat('''',legend5,'''');
        else
            CmdStr = strcat(CmdStr,',',str5);
            Legend = strcat(Legend,',','''',legend5,'''');
        end
    else
        CmdStr = CmdStr;
        Legend = Legend;
    end
end
if( ~isempty(get(handles.ed061,'String')) && ~isempty(get(handles.ed062,'String')) )
    if(get(handles.tb061,'Value'))
        if(strcmp(CmdStr,'No Command'))
            CmdStr = str6;
            Legend = strcat('''',legend6,'''');
        else
            CmdStr = strcat(CmdStr,',',str6);
            Legend = strcat(Legend,',','''',legend6,'''');
        end
    else
        CmdStr = CmdStr;
        Legend = Legend;
    end
end
if( ~isempty(get(handles.ed071,'String')) && ~isempty(get(handles.ed072,'String')) )
    if(get(handles.tb071,'Value'))
        if(strcmp(CmdStr,'No Command'))
            CmdStr = str7;
            Legend = strcat('''',legend7,'''');
        else
            CmdStr = strcat(CmdStr,',',str7);
            Legend = strcat(Legend,',','''',legend7,'''');
        end
    else
        CmdStr = CmdStr;
        Legend = Legend;
    end
end
if( ~isempty(get(handles.ed081,'String')) && ~isempty(get(handles.ed082,'String')) )
    if(get(handles.tb081,'Value'))
        if(strcmp(CmdStr,'No Command'))
            CmdStr = str8;
            Legend = strcat('''',legend8,'''');
        else
            CmdStr = strcat(CmdStr,',',str8);
            Legend = strcat(Legend,',','''',legend8,'''');
        end
    else
        CmdStr = CmdStr;
        Legend = Legend;
    end
end
if( ~isempty(get(handles.ed091,'String')) && ~isempty(get(handles.ed092,'String')) )
    if(get(handles.tb091,'Value'))
        if(strcmp(CmdStr,'No Command'))
            CmdStr = str9;
            Legend = strcat('''',legend9,'''');
        else
            CmdStr = strcat(CmdStr,',',str9);
            Legend = strcat(Legend,',','''',legend9,'''');
        end
    else
        CmdStr = CmdStr;
        Legend = Legend;
    end
end
if( ~isempty(get(handles.ed101,'String')) && ~isempty(get(handles.ed102,'String')) )
    if(get(handles.tb101,'Value'))
        if(strcmp(CmdStr,'No Command'))
            CmdStr = str10;
            Legend = strcat('''',legend10,'''');
        else
            CmdStr = strcat(CmdStr,',',str10);
            Legend = strcat(Legend,',','''',legend10,'''');
        end
    else
        CmdStr = CmdStr;
        Legend = Legend;
    end
end
%打印命令
CMD1 = 'plot';
CMD2 = 'legend';
if(strcmp(CmdStr,'No Command'))
else
disp(strcat(CMD1,'(',CmdStr,');'))
disp(strcat(CMD2,'(',Legend,');'))
end


% --- Executes on button press in open.
function open_Callback(hObject, eventdata, handles)
% hObject    handle to open (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
APMBinaryLog
