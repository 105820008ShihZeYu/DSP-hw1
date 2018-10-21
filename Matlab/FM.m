clear;

[music,Fs]=audioread('E:\Desktop\®F¿sSOLO\solo.mp3');
clear sound;

music=music(1:1102501,1);

t=[0:1/Fs:25];

fc=3000;
w=2*pi*fc;

phi=0;

X=sin(w*t+phi);

music=music';
Music=cumsum(music);
fm=sin(w*t+phi+Music);
fq=fftshift(fft(fm));
q=linspace(-Fs/2,Fs/2,length(music'));

subplot(411)
plot(t,X);
axis([0,0.012,-1,1])
xlabel('Carrier (t)')
subplot(412)
plot(t,music)
axis([0.25,0.25+25000/Fs,-1,1])
xlabel('Message (t)')
%axis([0,25000/Fs,-1,1])
subplot(413)
plot(t,fm);
axis([0.25,0.25+0.08,-1,1])
xlabel('FM Æ…∞Ï (t)')
subplot(414)
plot(q,abs(fq));
axis([-10000,10000,-inf,inf])
xlabel('FM Æ∂∫÷¿W√– (t)')
shg
audioFile='FM3000HZ.wav';
audiowrite(audioFile, fm, Fs) 
