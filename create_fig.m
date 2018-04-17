clear all 
close all
clc

%LateX for plots
set(groot,'defaulttextinterpreter','latex');  
set(groot, 'defaultAxesTickLabelInterpreter','latex'); 
set(groot, 'defaultLegendInterpreter','latex');
set(groot,'defaultLineLineWidth',1.5)

%%

%Creating directories if they are missing
if (exist('fig','dir') ==  0)
    mkdir('fig')
end
if (exist('eps','dir') ==  0)
    mkdir('eps')
end

%Sine wave plot
t = 0:0.01:10;
y = 2*sin(t + pi);
plot(t,y), xlabel('t'), ylabel('y'),title('Sine wave')
saveas(figure(1),[pwd '/fig/sinewave.fig']);
saveas(gcf,[pwd '/eps/sinewave'],'epsc');

%Step response
s = tf('s');
sys = 1/(10*s^2 + s + 0.11);
step(sys)
saveas(figure(1),[pwd '/fig/steprep.fig']);
saveas(gcf,[pwd '/eps/steprep'],'epsc');