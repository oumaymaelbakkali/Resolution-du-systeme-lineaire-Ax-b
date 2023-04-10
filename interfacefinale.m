function varargout = interfacefinale(varargin)
% INTERFACEFINALE MATLAB code for interfacefinale.fig
%      INTERFACEFINALE, by itself, creates a new INTERFACEFINALE or raises the existing
%      singleton*.
%
%      H = INTERFACEFINALE returns the handle to a new INTERFACEFINALE or the handle to
%      the existing singleton*.
%
%      INTERFACEFINALE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTERFACEFINALE.M with the given input arguments.
%
%      INTERFACEFINALE('Property','Value',...) creates a new INTERFACEFINALE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before interfacefinale_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to interfacefinale_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help interfacefinale

% Last Modified by GUIDE v2.5 14-Jun-2021 15:34:08

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @interfacefinale_OpeningFcn, ...
                   'gui_OutputFcn',  @interfacefinale_OutputFcn, ...
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


% --- Executes just before interfacefinale is made visible.
function interfacefinale_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to interfacefinale (see VARARGIN)

% Choose default command line output for interfacefinale
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes interfacefinale wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = interfacefinale_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function matA_Callback(hObject, eventdata, handles)
% hObject    handle to matA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of matA as text
%        str2double(get(hObject,'String')) returns contents of matA as a double


% --- Executes during object creation, after setting all properties.
function matA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to matA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vecb_Callback(hObject, eventdata, handles)
% hObject    handle to vecb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vecb as text
%        str2double(get(hObject,'String')) returns contents of vecb as a double


% --- Executes during object creation, after setting all properties.
function vecb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vecb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% --- Executes on button press in gauss.
function gauss_Callback(hObject, eventdata, handles)
% hObject    handle to gauss (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of gauss
global val1 a b;
val1= get(handles.gauss,'value')
if val1==1
set(handles.facLU,'value',0)
set(handles.jacobi,'value',0)
set(handles. gaussseaidel,'value',0)
a = str2num(get(handles.matA,'string'));
b = str2num(get(handles.vecb,'string'));
end



% --- Executes on button press in facLU.
function facLU_Callback(hObject, eventdata, handles)
% hObject    handle to facLU (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of facLU
global val2 a b;
val2=get(handles.facLU,'value')
if val2==1
set(handles.gauss,'value',0)
set(handles.jacobi,'value',0)
set(handles. gaussseaidel,'value',0)
a = str2num(get(handles.matA,'string'));
b = str2num(get(handles.vecb,'string'));
end


% --- Executes on button press in jacobi.
function jacobi_Callback(hObject, eventdata, handles)
% hObject    handle to jacobi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of jacobi
global val3 a b;
val3=get(handles.jacobi,'value')
if val3==1
set(handles.gauss,'value',0)
set(handles.facLU,'value',0)
set(handles. gaussseaidel,'value',0)
a = str2num(get(handles.matA,'string'));
b = str2num(get(handles.vecb,'string'));
end

% --- Executes on button press in gaussseaidel.
function gaussseaidel_Callback(hObject, eventdata, handles)
% hObject    handle to gaussseaidel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of gaussseaidelval1=get(handles.gauss,'value')
global val4 a b;
val4= get(handles.gaussseaidel,'value')
if val4==1
set(handles.gauss,'value',0)
set(handles. facLU,'value',0)
set(handles.jacobi,'value',0)
a = str2num(get(handles.matA,'string'));
b = str2num(get(handles.vecb,'string'));
end

% --- Executes on button press in result.
function result_Callback(hObject, eventdata, handles)
% hObject    handle to result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a b val1 val2 val3 val4;

if val1==1 
    A=[a b];
n=size(A,1);
for k=1:n-1
[C,I]=max(abs(A(k:n,k)));
if(C~=abs(A(k,k)))
A([(k+I-1) k],:)=A([k (k+I-1)],:);
end
for i=k+1:n
w=A(i,k)/A(k,k);
for j=k:n+1
A(i,j)=A(i,j)-w*A(k,j);
end
end
end
A(:,1:end-1)

A(:,end)
for i=n:-1:1
s=0;
for j=i+1:n
s=s+A(i,j)*x(j);
end
x(i)=(A(i,n+1)-s)/A(i,i);
end
elseif val2==1
    [L U]=lu(a);
x= U\(L\b);

elseif val3==1 
    x0=[0 ; 0 ; 0] ;
D=diag(diag(a));
L=tril(a,-1);
U=triu(a,1) ;
x1=1;
xi=x0 ;
while abs(x1-xi)>10^-6
    x1=-inv(D)*(L+U)*x0+inv(D)*b ;
    xi=x0 ;
    x0=x1 ;
end
x=x1;
else 
    x0=[0 ; 0 ; 0] ;
D=diag(diag(a));
L=tril(a,-1);
U=triu(a,1) ;
x1=1;
xi=x0 ;
while abs(x1-xi)>10^-6
    x1=-inv(D+L)*U*x0+inv(D+L)*b ;
    xi=x0 ;
    x0=x1 ;
end
x=x1 ;
end

    






set(handles.sol,'string',num2str(x));


% --- Executes on button press in draw.
function draw_Callback(hObject, eventdata, handles)
% hObject    handle to draw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a b ;
[n,m] =size(a);
if n==2
    x= -5:0.1:5;
    x1 = (b(1,1)/a(1,1))-((a(1,2)*x)/a(1,1));
    x2= (b(2,1)/a(2,1))-((a(2,2)*x)/a(2,1));
    axes(handles.axes6);
    plot(x,x1,'r');
    hold on;
    plot(x,x2,'k');
    hold off;

end
