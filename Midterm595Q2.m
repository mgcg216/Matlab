testim =zeros(2*256,2*256);
testim(256,256)=1;
g=blpf(testim, 2,10);
figure,
h=blpf(testim, 2,20);
figure,
i=blpf(testim, 2,40);
figure,
j=blpf(testim, 2,80);