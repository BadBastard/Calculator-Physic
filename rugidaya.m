function varargout = rugidaya(varargin)
% RUGIDAYA MATLAB code for rugidaya.fig
%      RUGIDAYA, by itself, creates a new RUGIDAYA or raises the existing
%      singleton*.
%
%      H = RUGIDAYA returns the handle to a new RUGIDAYA or the handle to
%      the existing singleton*.
%
%      RUGIDAYA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RUGIDAYA.M with the given input arguments.
%
%      RUGIDAYA('Property','Value',...) creates a new RUGIDAYA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before rugidaya_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to rugidaya_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help rugidaya

% Last Modified by GUIDE v2.5 30-May-2025 19:44:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @rugidaya_OpeningFcn, ...
                   'gui_OutputFcn',  @rugidaya_OutputFcn, ...
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


% --- Executes just before rugidaya is made visible.
function rugidaya_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to rugidaya (see VARARGIN)

% Choose default command line output for rugidaya
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes rugidaya wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = rugidaya_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in hitung.
function hitung_Callback(hObject, eventdata, handles)
% hObject    handle to hitung (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

        % Ambil input dari GUI
        Vp = str2double(get(handles.editVp, 'String'));    % Tegangan primer
        n  = str2double(get(handles.editn, 'String'));     % Efisiensi (%)
        Ps = str2double(get(handles.editPs, 'String'));    % Daya sekunder

        % Hitung arus primer Ip
        Ip = Ps / (Vp * (n / 100));

        % Hitung daya primer dan rugi daya
        Pp = Vp * Ip;
        Ph = Pp - Ps;

        set(handles.edit75, 'String', num2str(Ip));
        set(handles.dit88, 'String', num2str(Ph));



% --- Executes on button press in hapus.
function hapus_Callback(hObject, eventdata, handles)
% hObject    handle to hapus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    set(handles.editVp, 'String', '');
    set(handles.editn, 'String', '');
    set(handles.editPs, 'String', '');
    
    % Kosongkan hasil perhitungan
    set(handles.edit75, 'String', '');
    set(handles.dit88, 'String', '');


% --- Executes on button press in keluar.
function keluar_Callback(hObject, eventdata, handles)
% hObject    handle to keluar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    kalkulatortransformator;
    close(gcbf);



function edit75_Callback(hObject, eventdata, handles)
% hObject    handle to edit75 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit75 as text
%        str2double(get(hObject,'String')) returns contents of edit75 as a double


% --- Executes during object creation, after setting all properties.
function edit75_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit75 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function dit88_Callback(hObject, eventdata, handles)
% hObject    handle to dit88 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dit88 as text
%        str2double(get(hObject,'String')) returns contents of dit88 as a double


% --- Executes during object creation, after setting all properties.
function dit88_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dit88 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editVp_Callback(hObject, eventdata, handles)
% hObject    handle to editVp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editVp as text
%        str2double(get(hObject,'String')) returns contents of editVp as a double


% --- Executes during object creation, after setting all properties.
function editVp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editVp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editVs_Callback(hObject, eventdata, handles)
% hObject    handle to editVs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editVs as text
%        str2double(get(hObject,'String')) returns contents of editVs as a double


% --- Executes during object creation, after setting all properties.
function editVs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editVs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editn_Callback(hObject, eventdata, handles)
% hObject    handle to editn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editn as text
%        str2double(get(hObject,'String')) returns contents of editn as a double


% --- Executes during object creation, after setting all properties.
function editn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editPs_Callback(hObject, eventdata, handles)
% hObject    handle to editPs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editPs as text
%        str2double(get(hObject,'String')) returns contents of editPs as a double


% --- Executes during object creation, after setting all properties.
function editPs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editPs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
