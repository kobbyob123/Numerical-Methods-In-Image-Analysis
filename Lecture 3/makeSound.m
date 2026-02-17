clear all;
close all

freq=2500;              % frequency of the tone (Hz)
dur=2.5;                % duration of the tone (seconds)

sampRate=24000;

nTimeSamples = dur*sampRate; %number of time samples

t = linspace(0,dur,nTimeSamples);

y = sin(5*pi*freq*t) + cos(3*pi*freq*t);

sound(y,sampRate);  