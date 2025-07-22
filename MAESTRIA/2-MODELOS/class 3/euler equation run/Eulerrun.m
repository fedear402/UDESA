
function varargout = Eulerrun(varargin)
% EULERRUN MATLAB code for Eulerrun.fig
%      EULERRUN, by itself, creates a new EULERRUN or raises the existing
%      singleton*.
%
%      H = EULERRUN returns the handle to a new EULERRUN or the handle to
%      the existing singleton*.
%
%      EULERRUN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EULERRUN.M with the given input arguments.
%
%      EULERRUN('Property','Value',...) creates a new EULERRUN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Eulerrun_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Eulerrun_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Eulerrun

% Last Modified by GUIDE v2.5 02-Oct-2013 13:05:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Eulerrun_OpeningFcn, ...
                   'gui_OutputFcn',  @Eulerrun_OutputFcn, ...
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


% --- Executes just before Eulerrun is made visible.
function Eulerrun_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Eulerrun (see VARARGIN)
beta=get(handles.sliderbeta,'Value');
delta=get(handles.deltaslider,'Value');
theta=get(handles.thetaslider,'Value');
kfirst=1;
kss=((1/beta-1+delta)/theta)^(1/(theta-1));
klast=round(kss+1);
kstep=(klast-kfirst)/51;
kk=kfirst:kstep:klast;
[km,knum] = size(kk);
t=1:knum;
plot(t,kk)
drawnow
% Choose default command line output for Eulerrun
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Eulerrun wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Eulerrun_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function sliderbeta_Callback(hObject, eventdata, handles)
% hObject    handle to sliderbeta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
beta=get(handles.sliderbeta,'Value');
set(handles.betatext,'String',['beta = ' num2str(beta)]);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function sliderbeta_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderbeta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function deltaslider_Callback(hObject, eventdata, handles)
% hObject    handle to deltaslider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delta=get(handles.deltaslider,'Value');
set(handles.deltatext,'String',['delta = ' num2str(delta)]);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function deltaslider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to deltaslider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function thetaslider_Callback(hObject, eventdata, handles)
% hObject    handle to thetaslider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
theta=get(handles.thetaslider,'Value');
set(handles.thetatext,'String',['theta = ' num2str(theta)]);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function thetaslider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to thetaslider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
beta=get(handles.sliderbeta,'Value');
delta=get(handles.deltaslider,'Value');
theta=get(handles.thetaslider,'Value');
numitt=get(handles.numittslider,'Value');
numitt=round(numitt);
set(handles.pushbutton1,'String','WAIT')
Eulerdo(beta,delta,theta,numitt)
set(handles.pushbutton1,'String','Run program')


% --- Executes on slider movement.
function numittslider_Callback(hObject, eventdata, handles)
% hObject    handle to numittslider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
numitt=get(handles.numittslider,'Value');
numitt=round(numitt);
set(handles.numitttext,'String',['num iter = ' num2str(numitt)]);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function numittslider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numittslider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
