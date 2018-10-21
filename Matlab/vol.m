clear;
[music,Fs]=audioread('E:\Desktop\¨FÀsSOLO\solo.mp3');
clear sound;
close all;
%sound(music,Fs*2);
music=music(1:1102501,1);
MAX=max(music);
MIN=min(music);
MEAN=mean(music);

fq=fftshift(fft(music));
q=linspace(-40000,40000,length(music'));
 t=[0:1/Fs:25];
figure;
subplot(211);
plot(t,music);
xlabel("Origin ®É°ì",'Color','b')
subplot(212)
plot(t,music*0.8);
xlabel("0.8Vol ®É°ì",'Color','b')
%audiowrite('0.8volume.wav',music*0.8,Fs)