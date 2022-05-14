function varargout = ProjMGUI(varargin)


% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @ProjMGUI_OpeningFcn, ...
    'gui_OutputFcn',  @ProjMGUI_OutputFcn, ...
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


% --- Executes just before ProjMGUI is made visible.
function ProjMGUI_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;
guidata(hObject, handles);




% --- Outputs from this function are returned to the command line.
function varargout = ProjMGUI_OutputFcn(hObject, eventdata, handles)
% clc

"Kalispera sas!!!"


axes(handles.axes1);
imshow('title.png')


varargout{1} = handles.output;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%      Generate   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
global fs
global record1_samples
global record2_samples
global record3_samples
global duration
global x3
global x4
    
       fs       = str2num(get(handles.edit1,'string'));
       duration = str2num(get(handles.edit2,'string'));
       set(handles.text8,'string','arxiste na milate.');

       record1_samples = record(fs,duration);

       set(handles.text8,'string','telos ixografisis.');
       axes(handles.axes3) ,
       plot(record1_samples, 'c' , 'LineWidth', 1), grid on, xlabel('samples'), ylabel('Audio data (Magnitude)'), title('Record 1'), set(gca,'FontSize',8')

function pushbutton41_Callback(hObject, eventdata, handles)
global fs
global record1_samples
global record2_samples
global record3_samples
global duration
global x3
global x4

    fs       = str2num(get(handles.edit1,'string'));
    duration = str2num(get(handles.edit2,'string'));

    set(handles.text90,'string','arxiste na milate.');
     
    record2_samples = record(fs,duration);

    set(handles.text90,'string','telos ixografisis.');
    axes(handles.axes15) ,
    plot(record2_samples, 'c' , 'LineWidth', 1), grid on, xlabel('samples'), ylabel('Audio data (Magnitude)'), title('Record 2'), set(gca,'FontSize',8')


% --- Executes on button press in pushbutton42.
function pushbutton42_Callback(hObject, eventdata, handles)
global fs
global record1_samples
global record2_samples
global record3_samples
global duration
global x3
global x4

    fs       = str2num(get(handles.edit1,'string'));
    duration = str2num(get(handles.edit2,'string'));

    set(handles.text91,'string','arxiste na milate.');
    record3_samples = record(fs,duration);
    set(handles.text91,'string','telos ixografisis.');
   
    axes(handles.axes14) ,
    plot(record3_samples, 'c' , 'LineWidth', 1), grid on, xlabel('samples'), ylabel('Audio data (Magnitude)'), title('Record 3'), set(gca,'FontSize',8')


% --- Executes on button press in pushbutton40.
function pushbutton40_Callback(hObject, eventdata, handles)
global fs
global record1_samples
global record2_samples
global record3_samples
global duration
global x3
global x4

r =  record1_samples;
y =  record2_samples;
voice =  record3_samples;
[returnmessage, mape1,mape2,m1,m2] = wienertest(r,y,voice,fs, x3, x4);
set(handles.text113,'string',returnmessage);
 set(handles.text114,'string',mape1);
set(handles.text116,'string',mape2);
set(handles.text109,'string',m1);
set(handles.text110,'string',m2);

function pushbutton44_Callback(hObject, eventdata, handles)


  
 

% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
close all
clc
clear all



% --- Executes on button press in pushbutton45.
function pushbutton45_Callback(hObject, eventdata, handles)
global fs
global record1_samples
global record2_samples
global record3_samples
global duration
global x3
global x4

r =  record1_samples;
y =  record2_samples;
voice =  record3_samples;


[returnmessage, error1,error2,mape1,mape2, x3, x4] = mycrosscorr(r,y,voice,fs);

set(handles.text100,'string', (error1));
set(handles.text101,'string', (error2));
set(handles.text105,'string', (mape1));
set(handles.text107,'string', (mape2));

set(handles.text104,'string', returnmessage);



 


function edit1_Callback(hObject, eventdata, handles)
function edit1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit2_Callback(hObject, eventdata, handles)
function edit2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit3_Callback(hObject, eventdata, handles)
function edit3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit40_Callback(hObject, eventdata, handles)
function edit40_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit41_Callback(hObject, eventdata, handles)
function edit41_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function pushbutton43_Callback(hObject, eventdata, handles)


function edit42_Callback(hObject, eventdata, handles)
function edit42_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit43_Callback(hObject, eventdata, handles)
function edit43_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit44_Callback(hObject, eventdata, handles)
function edit44_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
