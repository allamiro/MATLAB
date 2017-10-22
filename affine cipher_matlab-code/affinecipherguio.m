function varargout = affinecipherguio(varargin)
% AFFINECIPHERGUIO MATLAB code for affinecipherguio.fig
%      AFFINECIPHERGUIO, by itself, creates a new AFFINECIPHERGUIO or raises the existing
%      singleton*.
%
%      H = AFFINECIPHERGUIO returns the handle to a new AFFINECIPHERGUIO or the handle to
%      the existing singleton*.
%
%      AFFINECIPHERGUIO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AFFINECIPHERGUIO.M with the given input arguments.
%
%      AFFINECIPHERGUIO('Property','Value',...) creates a new AFFINECIPHERGUIO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before affinecipherguio_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to affinecipherguio_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help affinecipherguio

% Last Modified by GUIDE v2.5 03-Dec-2016 01:36:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @affinecipherguio_OpeningFcn, ...
                   'gui_OutputFcn',  @affinecipherguio_OutputFcn, ...
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


% --- Executes just before affinecipherguio is made visible.
function affinecipherguio_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to affinecipherguio (see VARARGIN)

% Choose default command line output for affinecipherguio
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes affinecipherguio wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = affinecipherguio_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function pe_Callback(hObject, eventdata, handles)
% hObject    handle to pe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pe as text
%        str2double(get(hObject,'String')) returns contents of pe as a double


% --- Executes during object creation, after setting all properties.
function pe_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ae_Callback(hObject, eventdata, handles)
% hObject    handle to ae (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ae as text
%        str2double(get(hObject,'String')) returns contents of ae as a double


% --- Executes during object creation, after setting all properties.
function ae_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ae (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function be_Callback(hObject, eventdata, handles)
% hObject    handle to be (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of be as text
%        str2double(get(hObject,'String')) returns contents of be as a double


% --- Executes during object creation, after setting all properties.
function be_CreateFcn(hObject, eventdata, handles)
% hObject    handle to be (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in encrypt.
function encrypt_Callback(hObject, eventdata, handles)
% hObject    handle to encrypt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in decrypt.
function decrypt_Callback(hObject, eventdata, handles)
% hObject    handle to decrypt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function bde_Callback(hObject, eventdata, handles)
% hObject    handle to bde (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bde as text
%        str2double(get(hObject,'String')) returns contents of bde as a double


% --- Executes during object creation, after setting all properties.
function bde_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bde (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ade_Callback(hObject, eventdata, handles)
% hObject    handle to ade (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ade as text
%        str2double(get(hObject,'String')) returns contents of ade as a double


% --- Executes during object creation, after setting all properties.
function ade_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ade (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cde_Callback(hObject, eventdata, handles)
% hObject    handle to cde (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cde as text
%        str2double(get(hObject,'String')) returns contents of cde as a double


% --- Executes during object creation, after setting all properties.
function cde_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cde (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
