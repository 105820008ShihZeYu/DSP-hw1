clear;
[music,Fs]=audioread('E:\Desktop\¨FÀsSOLO\solo.mp3');
clear sound;


music=music(1:1102501,1);
t=[0:1/Fs:25];

fc=30;
phi=pi/4;
w=2*pi*fc;
A=1;
DC=1;
am=A.*(1+DC.*music').*cos(w*t+phi);
%am=music'.*sin(w*t+phi);
fq=fftshift(fft(am));
q=linspace(-Fs/2,Fs/2,length(music'));
CCC=sin(w*t+phi);
subplot(411)
plot(t,sin(w*t+phi))
axis([0,0.1,-1,1])
xlabel("Carrier (t)",'Color','b')

subplot(412)
plot(t,music)
axis([0,25,-0.6,0.6])
xlabel("Message (t)",'Color','b')

subplot(413)
plot(t,am);
xlabel("AM ®É°ì (t)",'Color','b')

subplot(414)
plot(q,abs(fq));
axis([-100,100,-inf,inf]);
xlabel("AM ®¶´TÀWÃÐ (Hz)",'Color','b')
%sound(am,Fs);
audioFile='AM30HZ.wav';
%audiowrite(audioFile, am, Fs) 
shg