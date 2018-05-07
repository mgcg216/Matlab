clear all

a=[1 1.6 2.28 1.325 0.68];
b=[0.06 0.19 0.27 -0.26 0.12];
in=[0.1 0.3 0.2 0.5];

st=[0 0 0];
for j = 0:2
    tmp=0;
    for i = 1:4
       tmp=a(j+1);
       tmp=tmp+in(i); 
    end
    st(j+1)=tmp;
end
num=1;
sys=tf(num,st);
step(sys);
