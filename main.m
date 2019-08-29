%% 1.1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 1.1

clc;
clear all;

t = 0 : 0.001 : 5;
y = 5 .* ones(size(t));

plot(t, y, 'LineWidth', 2);
xlabel("t(s)");
ylabel("y");
grid on;

%% 1.2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 1.2

clc;
clear all;

t = 0 : 0.001 : 5;
y = -3 .* ones(size(t));

plot(t, y, 'LineWidth', 2);
xlabel("t(s)");
ylabel("y");
grid on;

%% 1.3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 1.3

% f = 20Hz, T = 1/f = 50ms, 3T = 150ms.

clc;
clear all;

t = 0 : 0.0001 : 0.15;
y = -4 .* cos(40*pi*t);

plot(t, y, 'LineWidth', 2);
xlabel("t(s)");
ylabel("y");
grid on;

%% 1.4 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 1.4

% f = 40Hz, T = 1/f = 25ms, 3T = 75ms.

clc;
clear all;

t = 0 : 0.0001 : 0.075;
y = 6 .* sin(80*pi*t);

plot(t, y, 'LineWidth', 2);
xlabel("t(s)");
ylabel("y");
grid on;

%% 1.5 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 1.5

% f = 10Hz, T = 1/f = 100ms, 3T = 300ms.

clc;
clear all;

t = 0 : 0.0001 : 0.3;
y = 4 - 4*cos(20*pi*t) + 8*cos(40*pi*t) - 3*sin(100*pi*t) + 83*sin(140*pi*t);

plot(t, y, 'LineWidth', 2);
xlabel("t(s)");
ylabel("y");
grid on;

%% 1.6 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 1.6

clc;
clear all;

time = 5;

Fs_1 = time/10;
Fs_2 = time/100;

Fs = Fs_1;

t = 0 : Fs : 5;
y = 5 .* ones(size(t));

y_fft = fft(y);
y_fft_cent = fftshift(y_fft);

y_mag = abs(y_fft_cent);
y_phase = unwrap(angle(y_fft_cent));

f = linspace(-Fs/2, Fs/2, length(y));

subplot(3, 1, 1);
plot(t, y, 'k');
grid on;
%xlim([0, 5]);
xlabel('Tiempo (s)'), ylabel('Amplitud');

subplot(3, 1, 2);
plot(f, y_mag, 'r');
grid on;
%xlim([670, 1520]);
xlabel('Frecuencia (Hz)'), ylabel('Magnitud (dB)');

subplot(3, 1, 3);
plot(f, y_phase, 'b');
grid on;
%xlim([670, 1520]);
xlabel('Frecuencia (Hz)'), ylabel('Fase (rad)');

%% 1.7 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 1.7

clc;
clear all;

time = 5;

Fs_1 = time/10;
Fs_2 = time/100;

Fs = Fs_1;

t = 0 : Fs : time;
y = -3 .* ones(size(t));

y_fft = fft(y);
y_fft_cent = fftshift(y_fft);

y_mag = abs(y_fft_cent);
y_phase = unwrap(angle(y_fft_cent));

f = linspace(-Fs/2, Fs/2, length(y));

subplot(3, 1, 1);
plot(t, y, 'k');
grid on;
%xlim([0, 5]);
xlabel('Tiempo (s)'), ylabel('Amplitud');

subplot(3, 1, 2);
plot(f, y_mag, 'r');
grid on;
%xlim([670, 1520]);
xlabel('Frecuencia (Hz)'), ylabel('Magnitud (dB)');

subplot(3, 1, 3);
plot(f, y_phase, 'b');
grid on;
%xlim([670, 1520]);
xlabel('Frecuencia (Hz)'), ylabel('Fase (rad)');

%% 1.8 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 1.8

clc;
clear all;

time = 0.05;
f_max = 20;

Fs_1 = time/(3 * f_max);
Fs_2 = time/(20 * f_max);

Fs = Fs_2;

t = 0 : Fs : time;
y = -4 .* cos(40*pi*t);

y_fft = fft(y);
y_fft_cent = fftshift(y_fft);

y_mag = abs(y_fft_cent);
y_phase = unwrap(angle(y_fft_cent));

f = linspace(-Fs/2, Fs/2, length(y));

subplot(3, 1, 1);
plot(t, y, 'k');
grid on;
%xlim([0, 5]);
xlabel('Tiempo (s)'), ylabel('Amplitud');

subplot(3, 1, 2);
plot(f, y_mag, 'r');
grid on;
%xlim([670, 1520]);
xlabel('Frecuencia (Hz)'), ylabel('Magnitud (dB)');

subplot(3, 1, 3);
plot(f, y_phase, 'b');
grid on;
%xlim([670, 1520]);
xlabel('Frecuencia (Hz)'), ylabel('Fase (rad)');

%% 1.9 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 1.9

clc;
clear all;

time = 0.025;
f_max = 40;

Fs_1 = time/(3 * f_max);
Fs_2 = time/(20 * f_max);

Fs = Fs_2;

t = 0 : Fs : time;
y = 3 .* sin(80*pi*t);

y_fft = fft(y);
y_fft_cent = fftshift(y_fft);

y_mag = abs(y_fft_cent);
y_phase = unwrap(angle(y_fft_cent));

f = linspace(-Fs/2, Fs/2, length(y));

subplot(3, 1, 1);
plot(t, y, 'k');
grid on;
%xlim([0, 5]);
xlabel('Tiempo (s)'), ylabel('Amplitud');

subplot(3, 1, 2);
plot(f, y_mag, 'r');
grid on;
%xlim([670, 1520]);
xlabel('Frecuencia (Hz)'), ylabel('Magnitud (dB)');

subplot(3, 1, 3);
plot(f, y_phase, 'b');
grid on;
%xlim([670, 1520]);
xlabel('Frecuencia (Hz)'), ylabel('Fase (rad)');

%% 1.10 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 1.10

clc;
clear all;

time = 0.1;
f_max = 70;

Fs_1 = time/(3 * f_max);
Fs_2 = time/(20 * f_max);

Fs = Fs_2;

t = 0 : Fs : time;
y = 4 - 4*cos(20*pi*t) + 8*cos(40*pi*t) - 3*sin(100*pi*t) + 83*sin(140*pi*t);

y_fft = fft(y);
y_fft_cent = fftshift(y_fft);

y_mag = abs(y_fft_cent);
y_phase = unwrap(angle(y_fft_cent));

f = linspace(-Fs/2, Fs/2, length(y));

subplot(3, 1, 1);
plot(t, y, 'k');
grid on;
%xlim([0, 5]);
xlabel('Tiempo (s)'), ylabel('Amplitud');

subplot(3, 1, 2);
plot(f, y_mag, 'r');
grid on;
%xlim([670, 1520]);
xlabel('Frecuencia (Hz)'), ylabel('Magnitud (dB)');

subplot(3, 1, 3);
plot(f, y_phase, 'b');
grid on;
%xlim([670, 1520]);
xlabel('Frecuencia (Hz)'), ylabel('Fase (rad)');
