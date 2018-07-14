close all
i=imread('C:\Users\HP\Desktop\image medical\try\Capture1.png');
figure,imshow(i);
I=rgb2gray(i);
J=I<90;
s=strel('disk',2,0);
J=imerode(J,s);
figure, imshow(J);
BW1=edge(J);
% figure,display(BW1);
% figure, spy(BW1)
dim=size(BW1)
display(dim)

start=dim(2)/2;
while BW1(dim(1), start)==false
    start=start-1
%     display(start)
end
display(start)
% figure, imshow(BW1)
% hold on
% plot(start,dim(1),'r*')
start_y=start;
start_x=dim(1);
s=[start_x,start_y]

% if (BW1(start_x-1,start_y)==true)
%     start_x=start_x-1;
% elseif(BW1(start_x-1,start_y-1)==true)
%          start_x=start_x-1;
%          start_y=start_y-1
% elseif (BW1(start_x,start_y-1)==true)
%          start_y=start_y-1
% elseif (BW1(start_x+1,start_y-1)==true)
%          start_x=start_x+1;
%          start_y=start_y-1    
% elseif (BW1(start_x+1,start_y)==true)
%          start_x=start_x+1;
% end

% plot(start_y,start_x,'y*')

% while (start_x > start_xnew)
%     start_x=start_xnew;
%     start_y=start_ynew;
%     if (BW1(start_x-1,start_y)==true)
%     start_xnew=start_x-1;
%     elseif(BW1(start_x-1,start_y-1)==true)
%          start_xnew=start_x-1;
%          start_ynew=start_y-1
%     elseif (BW1(start_x,start_y-1)==true)
%          start_ynew=start_y-1
%     elseif (BW1(start_x+1,start_y-1)==true)
%          start_xnew=start_x+1;
%          start_y=start_y-1    
%     elseif (BW1(start_x+1,start_y)==true)
%          start_xnew=start_x+1;
%     elseif (BW1(start_x+1,start_y+1)==true)
%          start_xnew=start_x+1;
%          start_y_new=start_y+1   
%     elseif (BW1(start_x,start_y+1)==true)
%          start_y_new=start_y+1 
%     elseif (BW1(start_x-1,start_y+1)==true)
%          start_xnew=start_x-1;
%          start_y_new=start_y+1 
%     end
% plot(start_y,start_x,'y*')
% 
% 
% 
% display(BW1(start_x-1,start_y))
% display(BW1(start_x-1,start_y-1))
% display(BW1(start_x,start_y-1))
% display(BW1(start_x+1,start_y-1))
% display(BW1(start_x+1,start_y))
% 
% % display(BW1(start_x+1,start_y+1))
% % display(BW1(start_x,start_y+1))
% % display(BW1(start_x-1,start_y+1))
% 
% % plot(start_x,start_y-1,'y*')
% % plot(start_x,start_y-2,'g*')
% % plot(start_x+1,start_y-3,'y*')


% a=1
% X=[];
% while (a)
%     if (BW1(start_x,start_y-1)==true)
%     start_y=start_y-1;
%     a=1;
%     X=[X; start_x start_y]
%     
%     elseif(BW1(start_x-1,start_y-1)==true)
%          start_x=start_x-1;
%          start_y=start_y-1
%          a=1;
%          X=[X; start_x start_y]
%          
%     elseif (BW1(start_x-1,start_y)==true)
%          start_x=start_x-1
%          a=1;
%          X=[X; start_x start_y]
%       
%     elseif (BW1(start_x-1,start_y+1)==true)
%          start_x=start_x-1;
%          start_y=start_y+1 
%          a=1;
%          X=[X; start_x start_y]
%         
%     elseif (BW1(start_x,start_y+1)==true)
%          start_y=start_y+1;
%          a=1;
%          X=[X; start_x start_y]
%          
%     else
%          a=0;
%     end
%     display(X);
% end
start_xnew=start_x-1;
start_ynew=start_y;
while (start_xnew<start_x)
    start_x=start_xnew;
    start_y=start_ynew;
%     display(start_x);
%     display(start_y);
    if (BW1(start_x,start_y-1)==true)
    start_ynew=start_y-1;
    elseif(BW1(start_x-1,start_y-1)==true)
         start_xnew=start_x-1;
         start_ynew=start_y-1
    elseif(BW1(start_x-1,start_y)==true)
         start_xnew=start_x-1
    elseif (BW1(start_x-1,start_y+1)==true)
         start_xnew=start_x-1;
         start_ynew=start_y+1     
    elseif(BW1(start_x,start_y+1)==true)
         start_ynew=start_y+1;
    end
end

% figure, imshow(BW1)
% hold on
% plot(start,dim(1),'r*')
% plot(start_y,start_x,'y*') 

px=start_x;
py=start_y;
p=[px py]
start_xnew1=start_x;
start_ynew1=start_y+1;
X=[]
while (start_ynew1>start_y)
    start_x=start_xnew1;
    start_y=start_ynew1;
    X=[X; start_x start_y]
%     display(start_x);
%     display(start_y);
    if (BW1(start_x,start_y+1)==true)
    start_ynew1=start_y+1;
    elseif(BW1(start_x+1,start_y+1)==true)
         start_xnew1=start_x+1;
         start_ynew1=start_y+1
    elseif(BW1(start_x+1,start_y)==true)
         start_xnew1=start_x+1
%     elseif (BW1(start_x+1,start_y+1)==true)
%          start_xnew1=start_x+1;
%          start_ynew1=start_y+1     
%     elseif(BW1(start_x,start_y+1)==true)
%          start_ynew1=start_y+1;
    end
end
% fitvars=polyfit(X(:,1), X(:,2),1)
% m=fitvars(1);
% c=fitvars(2);
l=length(X);
display(l);
count=1;

f1= X(l,1);
le=l;
while X(le-1,1)==f1;
    count=count+1;
    le=le-1;
end
c=round(count/2)

start_x = X(l-c,1)
start_y=X(l-c,2)    
st=[start_x start_y]

figure, imshow(BW1)
hold on
% ypp=diff(X(:,2),2);
% t_inf1=fzero(@(T) interp1(X(:,1)(2:end-1),ypp,T,'linear','extrap'),0)
% y_inf1 = interp1(t_inf1, y_inf1, 'ro');
plot(start,dim(1),'r*')
plot(py,px,'y*')
plot(start_y,start_x,'g*')
% line(p,st)
