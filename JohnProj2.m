
%Program name: Matlab Project 2
%Authored by: Michael Gerrard Guerrero 


n=0:20;
y1(1)=1;
y2(1:5)=0;
y3(1)=1;
y4(1:5)=0;
for i=2:21
    y1(i)=i/(i+1)*y1(i-1)+1;
end
stem(n,y1)
figure
for i = 6:21
    y2(i)=i/(i+1)*y2(i-1)+1;
end
stem(n,y2)
figure
for i=2:21
    y3(i)=0.9*y3(i-1)+1;
end
stem(n,y3)
figure
for i=6:21
    y4(i)=0.9*y4(i-1)+1;
end
stem(n,y4)
