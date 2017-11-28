function varargout = Mapeo(varargin)
% MAPEO MATLAB code for Mapeo.fig
%      MAPEO, by itself, creates a new MAPEO or raises the existing
%      singleton*.
%
%      H = MAPEO returns the handle to a new MAPEO or the handle to
%      the existing singleton*.
%
%      MAPEO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAPEO.M with the given input arguments.
%
%      MAPEO('Property','Value',...) creates a new MAPEO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Mapeo_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Mapeo_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Mapeo

% Last Modified by GUIDE v2.5 24-Nov-2017 22:33:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Mapeo_OpeningFcn, ...
                   'gui_OutputFcn',  @Mapeo_OutputFcn, ...
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


% --- Executes just before Mapeo is made visible.
function Mapeo_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Mapeo (see VARARGIN)

% Choose default command line output for Mapeo
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Mapeo wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Mapeo_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function u_Callback(hObject, eventdata, handles)
% hObject    handle to u (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of u as text
%        str2double(get(hObject,'String')) returns contents of u as a double

% --- Executes during object creation, after setting all properties.
function u_CreateFcn(hObject, eventdata, handles)
% hObject    handle to u (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v_Callback(hObject, eventdata, handles)
% hObject    handle to v (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of v as text
%        str2double(get(hObject,'String')) returns contents of v as a double


% --- Executes during object creation, after setting all properties.
function v_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Ymax_Callback(hObject, eventdata, handles)
% hObject    handle to Ymax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Ymax as text
%        str2double(get(hObject,'String')) returns contents of Ymax as a double
X1 = str2num(get(handles.Xmin,'string'));
X2 = str2num(get(handles.Xmax,'string'));
Y1 = str2num(get(handles.Ymin,'string'));
Y2 = str2num(get(handles.Ymax,'string'));

%axes(handles.axes4)
set(handles.axes4,'Xlim',[X1,X2],'Ylim',[Y1,Y2]);


% --- Executes during object creation, after setting all properties.
function Ymax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Ymax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Xmin_Callback(hObject, eventdata, handles)
% hObject    handle to Xmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Xmin as text
%        str2double(get(hObject,'String')) returns contents of Xmin as a double
X1 = str2num(get(handles.Xmin,'string'));
X2 = str2num(get(handles.Xmax,'string'));
Y1 = str2num(get(handles.Ymin,'string'));
Y2 = str2num(get(handles.Ymax,'string'));

%axes(handles.axes4)
set(handles.axes4,'Xlim',[X1,X2],'Ylim',[Y1,Y2]);


% --- Executes during object creation, after setting all properties.
function Xmin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Xmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Xmax_Callback(hObject, eventdata, handles)
% hObject    handle to Xmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Xmax as text
%        str2double(get(hObject,'String')) returns contents of Xmax as a double
X1 = str2num(get(handles.Xmin,'string'));
X2 = str2num(get(handles.Xmax,'string'));
Y1 = str2num(get(handles.Ymin,'string'));
Y2 = str2num(get(handles.Ymax,'string'));

%axes(handles.axes4)
set(handles.axes4,'Xlim',[X1,X2],'Ylim',[Y1,Y2]);


% --- Executes during object creation, after setting all properties.
function Xmax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Xmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Ymin_Callback(hObject, eventdata, handles)
% hObject    handle to Ymin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Ymin as text
%        str2double(get(hObject,'String')) returns contents of Ymin as a double
X1 = str2num(get(handles.Xmin,'string'));
X2 = str2num(get(handles.Xmax,'string'));
Y1 = str2num(get(handles.Ymin,'string'));
Y2 = str2num(get(handles.Ymax,'string'));
set(handles.axes4,'Xlim',[X1,X2],'Ylim',[Y1,Y2]);


% --- Executes during object creation, after setting all properties.
function Ymin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Ymin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on mouse press over axes background.
function axes2_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on mouse press over axes background.
function axes4_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% [px,py] = ginput(4);
% px
% py

%[lx,ly] = getline('closed')

% --- Executes on key press with focus on Xmin and none of its controls.
function Xmin_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to Xmin (see GCBO)
% eventdata  structure with the following fields (see UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


function Xpt_Callback(hObject, eventdata, handles)
% hObject    handle to Xpt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Xpt as text
%        str2double(get(hObject,'String')) returns contents of Xpt as a double


% --- Executes during object creation, after setting all properties.
function Xpt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Xpt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Ypt_Callback(hObject, eventdata, handles)
% hObject    handle to Ypt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Ypt as text
%        str2double(get(hObject,'String')) returns contents of Ypt as a double


% --- Executes during object creation, after setting all properties.
function Ypt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Ypt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in buttonPlot.
function buttonPlot_Callback(hObject, eventdata, handles)
% hObject    handle to buttonPlot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
xpt = str2num(get(handles.Xpt,'string'));
ypt = str2num(get(handles.Ypt,'string'));

concat = '@(x,y)';
u = str2func(strcat(concat,get(handles.u,'string')));
f1 = u(xpt,ypt);
v = str2func(strcat(concat,get(handles.v,'string')));
f2 = v(xpt,ypt);
axes(handles.axes4);
plot(xpt,ypt,'*','Linewidth',1.2);
grid on;
axes(handles.axes2);
plot(f1,f2,'*','Linewidth',1.2);
grid on;
X1 = str2num(get(handles.Xmin,'string'));
X2 = str2num(get(handles.Xmax,'string'));
Y1 = str2num(get(handles.Ymin,'string'));
Y2 = str2num(get(handles.Ymax,'string'));
set(handles.axes4,'Xlim',[X1,X2],'Ylim',[Y1,Y2]);


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over buttonPlot.
function buttonPlot_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to buttonPlot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function axes4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
grid on;
% Hint: place code in OpeningFcn to populate axes4


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes when selected object is changed in Sel.
function Sel_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in Sel 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)
teta = (0:0.01:2*pi);
R = str2num(get(handles.LimE,'string'));
R3 = 1;
R2 = 2*R;
x2 = R*cos(teta);
y2 = R*sin(teta)+.5;
x3 = R2*cos(teta)+1;
y3 = R2*sin(teta);
x4 = R3*cos(teta);
y4 = R3*sin(teta);
if hObject == handles.LimitFcn
    cla(handles.axes2);
    cla(handles.axes4);
    set(handles.u,'string','y/2');
    set(handles.v,'string','x/2');
    set(handles.Msg,'Visible','Off');
    set(handles.LimE,'Visible','On');
    set(handles.text200,'Visible','On');
    axes(handles.axes2);
    hold on;
    plot(x2,y2,'-.r');
    axes(handles.axes4);
    hold on;
    plot(x3,y3,'-.r');
    plot(x4,y4,'--b');
elseif hObject == handles.WithoutFcn
    cla(handles.axes2);
    cla(handles.axes4);
    set(handles.u,'string','x/(x^2+y^2)^(1/2)');
    set(handles.v,'string','-y/(x^2+y^2)^(1/2)');
    set(handles.Msg,'Visible','Off');
    set(handles.LimE,'Visible','Off');
    set(handles.text200,'Visible','Off');
else
    cla(handles.axes2);
    cla(handles.axes4);
    set(handles.Msg,'string','Ingresa valores de u y v','Visible','On');
    set(handles.LimE,'Visible','Off');
    set(handles.text200,'Visible','Off');
end



function LimE_Callback(hObject, eventdata, handles)
% hObject    handle to LimE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of LimE as text
%        str2double(get(hObject,'String')) returns contents of LimE as a double


% --- Executes during object creation, after setting all properties.
function LimE_CreateFcn(hObject, eventdata, handles)
% hObject    handle to LimE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Clean.
function Clean_Callback(hObject, eventdata, handles)
% hObject    handle to Clean (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes4);
cla(handles.axes2);


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
grid on;
% Hint: place code in OpeningFcn to populate axes2
