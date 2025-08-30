function varargout = project_Transformator(varargin)
%PROJECT_TRANSFORMATOR M-file for project_Transformator.fig
%      PROJECT_TRANSFORMATOR, by itself, creates a new PROJECT_TRANSFORMATOR or raises the existing
%      singleton*.
%
%      H = PROJECT_TRANSFORMATOR returns the handle to a new PROJECT_TRANSFORMATOR or the handle to
%      the existing singleton*.
%
%      PROJECT_TRANSFORMATOR('Property','Value',...) creates a new PROJECT_TRANSFORMATOR using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to project_Transformator_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      PROJECT_TRANSFORMATOR('CALLBACK') and PROJECT_TRANSFORMATOR('CALLBACK',hObject,...) call the
%      local function named CALLBACK in PROJECT_TRANSFORMATOR.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help project_Transformator

% Last Modified by GUIDE v2.5 30-May-2025 13:00:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @project_Transformator_OpeningFcn, ...
                   'gui_OutputFcn',  @project_Transformator_OutputFcn, ...
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


% --- Executes just before project_Transformator is made visible.
function project_Transformator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for project_Transformator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes project_Transformator wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = project_Transformator_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in materi.
function materi_Callback(hObject, eventdata, handles)
% hObject    handle to materi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

status = get(handles.popupmenu1, 'Visible');

if isequal(status, 'off')
    set(handles.popupmenu1, 'Visible', 'on');
    
    set(handles.kelompok, 'Visible', 'off');
else
    set(handles.popupmenu1, 'Visible', 'off');
    
    set(handles.materi1, 'Visible', 'off');
    set(handles.materi2, 'Visible', 'off');
    set(handles.materi3, 'Visible', 'off');
    set(handles.materi4, 'Visible', 'off');
    
end


% --- Executes on button press in kalkulator.
function kalkulator_Callback(hObject, eventdata, handles)
% hObject    handle to kalkulator (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
kalkulatortransformator;
close(gcbf);


% --- Executes on button press in namaKelompok.
function namaKelompok_Callback(hObject, eventdata, handles)
% hObject    handle to namaKelompok (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
status = get(handles.kelompok, 'Visible');

if isequal(status, 'off')
    % Tampilkan teks
    set(handles.kelompok, 'Visible', 'on');
    
    set(handles.popupmenu1, 'Visible', 'off');
    set(handles.materi1, 'Visible', 'off');
    set(handles.materi2, 'Visible', 'off');
    set(handles.materi3, 'Visible', 'off');
    set(handles.materi4, 'Visible', 'off');
else
    % Sembunyikan teks
    set(handles.kelompok, 'Visible', 'off');
end



% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1

pilihan = get(handles.popupmenu1,'value');

% Sembunyikan semua materi
set(handles.materi1, 'Visible', 'off');
set(handles.materi2, 'Visible', 'off');
set(handles.materi3, 'Visible', 'off');
set(handles.materi4, 'Visible', 'off');

% Tampilkan yang dipilih
switch pilihan
    case 1
        set(handles.materi1, 'Visible', 'on');
    case 2
        set(handles.materi2, 'Visible', 'on');
    case 3
        set(handles.materi3, 'Visible', 'on');
    case 4
        set(handles.materi4, 'Visible', 'on');
end


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function namaKelompok_CreateFcn(hObject, eventdata, handles)
% hObject    handle to namaKelompok (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function kalkulator_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kalkulator (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
