function [ pitch, t_pitch ] = detect_pitch_acf( x_t, t, fs, win_size, hop_size, min_lag, max_lag )
% Detect pitch using the unbiased autocorrelation function.
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

%   Detailed explanation goes here
% fun = @(A,B) mean(A.*B);

N = win_size;
overlap = win_size - hop_size;

% soundsc(x_t,fs);
p = floor (( length(x_t) - win_size ) / hop_size) +1; 
block = buffer(x_t,N,overlap,'nodelay');

pitch = zeros(1,p);
rx = zeros(1,max_lag);
% ACF function
for b = 1 : p
    for l = min_lag:max_lag
        rx(l) = mean(block(l+1:N,b) .* block(1:N-l,b));
    end
    med_rx = medfilt1(rx);
    [~, loc] = max(med_rx(min_lag:max_lag));
    pitch(1,b) = fs / loc;
end


t_pitch = (1/fs:hop_size/fs:p*hop_size/fs);


end

