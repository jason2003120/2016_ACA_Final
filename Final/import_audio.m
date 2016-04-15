function [ y, fs, t ] = import_audio( filepath )

% Import an audio signal from a wave file.
%
% Parameters
% ----------
% filepath : string
% path to a .wav file
%
% Returns
% -------
% x t : 1 x T array
% time domain signal
% t : 1 x T array
% time points in seconds
% fs : int
% sample rate (samples per second)

[x_t, fs] = wavread(filepath);
[m,n] = size(x_t);

if n > 1
    y = x_t(:,1);
else
    y = x_t;
end

t = [1/fs:1/fs:length(x_t)/fs];


end

