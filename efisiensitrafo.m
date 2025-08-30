function varargout = efisiensitrafo(varargin)
% EFISIENSITRAFO MATLAB code for efisiensitrafo.fig
%      EFISIENSITRAFO, by itself, creates a new EFISIENSITRAFO or raises the existing
%      singleton*.
%
%      H = EFISIENSITRAFO returns the handle to a new EFISIENSITRAFO or the handle to
%      the existing singleton*.
%
%      EFISIENSITRAFO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EFISIENSITRAFO.M with the given input arguments.
%
%      EFISIENSITRAFO('Property','Value',...) creates a new EFISIENSITRAFO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before efisiensitrafo_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to efisiensitrafo_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help efisiensitrafo

% Last Modified by GUIDE v2.5 30-May-2025 18:54:57

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @efisiensitrafo_OpeningFcn, ...
                   'gui_OutputFcn',  @efisiensitrafo_OutputFcn, ...
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


% --- Executes just before efisiensitrafo is made visible.
function efisiensitrafo_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no hs args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to efisiensitrafo (see VARARGIN)

% Choose default command line hs for efisiensitrafo
handles.hs = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes efisiensitrafo wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = efisiensitrafo_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning hs args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line hs from handles structure
varargout{1} = handles.hs;


% --- Executes on button press in hitung.
function hitung_Callback(hObject, eventdata, handles)
% hObject    handle to hitung (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    lp = str2double(get(handles.lp2, 'String'));
    ls = str2double(get(handles.ls3, 'String'));
    Np = str2double(get(handles.np1, 'String'));
    Ns = str2double(get(handles.ns4, 'String'));
    
    n =(ls*Ns)/(lp*Np)*100;
    
    set(handles.edit8,'String',num2str(n));


% --- Executes on button press in hapus.
function hapus_Callback(hObject, eventdata, handles)
% hObject    handle to hapus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    set(handles.np1, 'String', '');
    set(handles.lp2, 'String', '');
    set(handles.ls3, 'String', '');
    set(handles.ns4, 'String', '');
    set(handles.edit8, 'String', '');

% --- Executes on button press in keluar.
function keluar_Callback(hObject, eventdata, handles)
% hObject    handle to keluar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    kalkulatortransformator;
    close(gcbf);




function hs_Callback(hObject, eventdata, handles)
% hObject    handle to hs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hs as text
%        str2double(get(hObject,'String')) returns contents of hs as a double


% --- Executes during object creation, after setting all properties.
function hs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function np1_Callback(hObject, eventdata, handles)
% hObject    handle to np1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of np1 as text
%        str2double(get(hObject,'String')) returns contents of np1 as a double


% --- Executes during object creation, after setting all properties.
function np1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to np1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function lp2_Callback(hObject, eventdata, handles)
% hObject    handle to lp2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lp2 as text
%        str2double(get(hObject,'String')) returns contents of lp2 as a double


% --- Executes during object creation, after setting all properties.
function lp2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lp2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ls3_Callback(hObject, eventdata, handles)
% hObject    handle to ls3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ls3 as text
%        str2double(get(hObject,'String')) returns contents of ls3 as a double


% --- Executes during object creation, after setting all properties.
function ls3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ls3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ns4_Callback(hObject, eventdata, handles)
% hObject    handle to ns4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ns4 as text
%        str2double(get(hObject,'String')) returns contents of ns4 as a double


% --- Executes during object creation, after setting all properties.
function ns4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ns4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
