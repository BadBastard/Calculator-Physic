function varargout = kalkulatortransformator(varargin)
% KALKULATORTRANSFORMATOR MATLAB code for kalkulatortransformator.fig
%      KALKULATORTRANSFORMATOR, by itself, creates a new KALKULATORTRANSFORMATOR or raises the existing
%      singleton*.
%
%      H = KALKULATORTRANSFORMATOR returns the handle to a new KALKULATORTRANSFORMATOR or the handle to
%      the existing singleton*.
%
%      KALKULATORTRANSFORMATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KALKULATORTRANSFORMATOR.M with the given input arguments.
%
%      KALKULATORTRANSFORMATOR('Property','Value',...) creates a new KALKULATORTRANSFORMATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before kalkulatortransformator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to kalkulatortransformator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help kalkulatortransformator

% Last Modified by GUIDE v2.5 30-May-2025 11:24:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @kalkulatortransformator_OpeningFcn, ...
                   'gui_OutputFcn',  @kalkulatortransformator_OutputFcn, ...
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


% --- Executes just before kalkulatortransformator is made visible.
function kalkulatortransformator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to kalkulatortransformator (see VARARGIN)

% Choose default command line output for kalkulatortransformator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes kalkulatortransformator wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = kalkulatortransformator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
function menukalkulator_Callback(hObject, eventdata, handles)
% hObject    handle to menukalkulator (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function soal1_Callback(hObject, eventdata, handles)
% hObject    handle to soal1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function soal2_Callback(hObject, eventdata, handles)
% hObject    handle to soal2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in popupmenukalkulator.
function popupmenukalkulator_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenukalkulator (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenukalkulator contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenukalkulator

% Ambil index dari pilihan popup
    val = get(hObject, 'Value');
    
    switch val
        case 2 
            lilitan;  
            close(gcbf);
        case 3 
            efisiensitrafo;
            close(gcbf);
        case 4  
            rugidaya;
            close(gcbf);
    end


% --- Executes during object creation, after setting all properties.
function popupmenukalkulator_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenukalkulator (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in exit.
function exit_Callback(hObject, eventdata, handles)
% hObject    handle to exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
project_Transformator;
close(gcbf);
