function varargout = gui(varargin)
%GUI MATLAB code file for gui.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('Property','Value',...) creates a new GUI using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to gui_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      GUI('CALLBACK') and GUI('CALLBACK',hObject,...) call the
%      local function named CALLBACK in GUI.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui

% Last Modified by GUIDE v2.5 19-Dec-2022 02:52:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before gui is made visible.
function gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for gui
handles.output = hObject;
uiwait(msgbox({'Hello,','angle must be between[0,90]','choose planet before simulate'},'CAD','help'));
img1=imread('C:\Users\20114\Desktop\gui\projectiles.jpg'); 
axes(handles.axes1);
imshow(img1);
img2=imread('C:\Users\20114\Desktop\gui\table.jpg'); 
axes(handles.axes2);
imshow(img2);
img3=imread('C:\Users\20114\Desktop\gui\medium.jpg'); 
axes(handles.axes4);
imshow(img3);
% Update handles structure
guidata(hObject, handles);
ah = axes('unit', 'normalized', 'position', [0 0 1 1]);
bg = imread('C:\Users\20114\Desktop\gui\download.jpg'); 
imagesc(bg);
set(ah,'handlevisibility','off','visible','off')
uistack(ah, 'bottom');

% UIWAIT makes gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function angle_Callback(hObject, eventdata, handles)
% hObject    handle to angle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of angle as text
%        str2double(get(hObject,'String')) returns contents of angle as a double


% --- Executes during object creation, after setting all properties.
function angle_CreateFcn(hObject, eventdata, handles)
% hObject    handle to angle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y_Callback(hObject, eventdata, handles)
% hObject    handle to y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y as text
%        str2double(get(hObject,'String')) returns contents of y as a double


% --- Executes during object creation, after setting all properties.
function y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x_Callback(hObject, eventdata, handles)
% hObject    handle to x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x as text
%        str2double(get(hObject,'String')) returns contents of x as a double


% --- Executes during object creation, after setting all properties.
function x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function maxheight_Callback(hObject, eventdata, handles)
% hObject    handle to maxheight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of maxheight as text
%        str2double(get(hObject,'String')) returns contents of maxheight as a double


% --- Executes during object creation, after setting all properties.
function maxheight_CreateFcn(hObject, eventdata, handles)
% hObject    handle to maxheight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function xmaxh_Callback(hObject, eventdata, handles)
% hObject    handle to xmaxh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xmaxh as text
%        str2double(get(hObject,'String')) returns contents of xmaxh as a double


% --- Executes during object creation, after setting all properties.
function xmaxh_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xmaxh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function xv_Callback(hObject, eventdata, handles)
% hObject    handle to xv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xv as text
%        str2double(get(hObject,'String')) returns contents of xv as a double


% --- Executes during object creation, after setting all properties.
function xv_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function time_Callback(hObject, eventdata, handles)
% hObject    handle to time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of time as text
%        str2double(get(hObject,'String')) returns contents of time as a double


% --- Executes during object creation, after setting all properties.
function time_CreateFcn(hObject, eventdata, handles)
% hObject    handle to time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function velocity_Callback(hObject, eventdata, handles)
% hObject    handle to velocity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of velocity as text
%        str2double(get(hObject,'String')) returns contents of velocity as a double


% --- Executes during object creation, after setting all properties.
function velocity_CreateFcn(hObject, eventdata, handles)
% hObject    handle to velocity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yv_Callback(hObject, eventdata, handles)
% hObject    handle to yv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yv as text
%        str2double(get(hObject,'String')) returns contents of yv as a double


% --- Executes during object creation, after setting all properties.
function yv_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function maxdistance_Callback(hObject, eventdata, handles)
% hObject    handle to maxdistance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of maxdistance as text
%        str2double(get(hObject,'String')) returns contents of maxdistance as a double


% --- Executes during object creation, after setting all properties.
function maxdistance_CreateFcn(hObject, eventdata, handles)
% hObject    handle to maxdistance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
x=str2double(get(handles.x,'string'));
y=str2double(get(handles.y,'string'));
velocity=str2double(get(handles.velocity,'string'));
q=str2double(get(handles.angle,'string'));
if get(handles.radio2,'value')==1
    angle=q;
elseif get(handles.radio1,'value')==1
    angle=q*pi/180;
end
str=get(handles.gravity,'string');
val=get(handles.gravity,'value');
switch str{val}
    case 'Choose planet'
        g=0;
    case 'Earth'
        g=9.8;
    case 'Moon'
        g=1.6;
    case 'Venus'
        g=8.9;
    case 'Mars'
        g=3.7;
    case 'Mercury'
        g=3.7;
    case 'Jupiter'
        g=23.1;
    case 'Saturn'
        g=9;
    case 'Uranus'
        g=8.7;
    case 'Neptune'
        g=11;
    case 'Pluto'
        g=0.7;
end
if get(handles.radio3,'value')==1
x=x*0.3048;
y=y*0.3048;
velocity=velocity*0.3048;
g=g*0.3048;
end
yv=velocity*sin(angle);
xv=velocity*cos(angle);
t=(yv+sqrt(yv.^2+2*g*y))/g;
l=2*yv/g;
xmaxy=xv*l/2+x;
k=0:t/100:t;
yp=-g/2*(k.^2)+yv*k+y;
xp=x+xv*k;
xmax=xp(end)-x;
maxy=max(yp);
uiwait(msgbox({'Be careful,','plan is going to take off'},'CAD','warn'));
h = Aero.Animation;
h.FramesPerSecond = 30;
h.TimeScaling = 5;
idx1 = h.createBody('pa24-250_orange.ac','Ac3d');
load simdata;
h.Bodies{1}.TimeSeriesSource = simdata;
h.show();
h.play();
t = 0;
h.updateBodies(t);
h.updateCamera(t);
pause(2);
h.delete;
set(handles.maxdistance,'string',xmax);
set(handles.maxh,'string',maxy);
set(handles.xmaxh,'string',xmaxy);
set(handles.xv,'string',xv);
set(handles.yv,'string',yv);
set(handles.time,'string',t);
axes(handles.axes1);
for f=1:length(k)
         Xp=xp(f);
         Yp=yp(f);
    plot(Xp,Yp,'o','MarkerFaceColor','b')
    xlabel('x-coordinate');
    ylabel('y-coordinate');
    stem(xmaxy,maxy,'b');
    stem(x,y,'k','linewidth',4);
    hold on;
    box off;
    xlim([0 inf]);
    ylim([0 inf]);
    pause(0.01);
end
zoom on;
vv=yv-g*k;
axes(handles.axes2)
for ii=1:length(k)
    VV=vv(ii);
    K=k(ii);
    plot(K,VV,'*','MarkerFaceColor','b')
    xlabel('Time');
    ylabel('Y Velocity');
    hold on;
    pause(0.01);
end
    ax = gca;
    ax.XAxisLocation = 'origin';
    zoom on;
axes(handles.axes4)
for ii=1:length(k)
    Xp=xp(ii);
    K=k(ii);
    plot(K,Xp,'*','MarkerFaceColor','b')
    xlabel('Time');
    ylabel('Y Velocity');
    hold on;
    pause(0.01);
end
    bx = gca;
    bx.XAxisLocation = 'origin';
    zoom on;
function pushbutton2_Callback(hObject, eventdata, handles)
set(handles.pushbutton1,'enable','off')
set(handles.maxdistance,'string','');
set(handles.maxh,'string','');
set(handles.xmaxh,'string','');
set(handles.xv,'string','');
set(handles.yv,'string','');
set(handles.time,'string','');
set(handles.velocity,'string','');
set(handles.x,'string','');
set(handles.y,'string','');
set(handles.angle,'string','');
clear all
clc
cla
grid off

% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in listbox2.
function listbox2_Callback(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox2


% --- Executes during object creation, after setting all properties.
function listbox2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in gravity.
function gravity_Callback(hObject, eventdata, handles)
set(handles.pushbutton1,'enable','on')
% hObject    handle to gravity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns gravity contents as cell array
%        contents{get(hObject,'Value')} returns selected item from gravity


% --- Executes during object creation, after setting all properties.
function gravity_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gravity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkbox1.

% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
close
msgbox({'Happy to help you again'},'CAD','help');

% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
v=get(handles.togglebutton1,'value');
if v==1
    grid on
else 
    grid off
end
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1
