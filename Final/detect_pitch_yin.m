function [ pitch, t_pitch  ] = detect_pitch_yin( x_t, t, fs, win_size, hop_size, min_lag, max_lag )
% Detect pitch using yin.
%
% Parameters
% ----------
% x_t : 1 x T array
% time domain signal
% t : 1 x T array
% time points in seconds
% fs : int
% sample rate (samples per second)
% win_size : int
% window size (in samples)
% hop_size : int
% hop size (in samples)
% min_lag : int
% minimum possible lag value (in samples)
% max_lag : int
% maximum possible lag value (in samples)
%
% Returns
% -------
% pitch : 1 x P array
% detected pitch values (Hz)
% t_pitch : 1 x P array
% time points in seconds

% fun = @(A,B) sum((A-B)^2);

N = win_size;
overlap = win_size - hop_size;
% soundsc(x_t,fs);
dl_sum = zeros(1,max_lag-min_lag+1);
% dl = zeros(,1)
p = floor (( length(x_t) - win_size ) / hop_size) +1;
block = buffer(x_t,N,overlap,'nodelay');

pitch = zeros(1,p);
% YIN function
for b = 1 : p
    for l = min_lag:max_lag

        dl =  (block(1:N-l,b) - block(l+1:N,b)).^2;
        dl_sum(l) = sum(dl);
    end
    med_dl = medfilt1(dl_sum);
    [~, loc] = min(med_dl(min_lag:max_lag));     
    pitch(1,b) = fs / loc;

end

           
t_pitch = (1/fs:hop_size/fs:p*hop_size/fs);

end

