function [ data_u,data_s ] = get_feature_acoustic( fpath, mfsc_params,label,start_time, stop_time )
%GET_FEATURE Summary of this function goes here
%   Detailed explanation goes here

[ x_t, fs, t ] = import_audio( fpath );

% cutting time
t_cut = t(start_time*fs+1:fs*stop_time);
x_t_cut = x_t(start_time*fs+1:fs*stop_time);


% acoustic feature
[mfsc, ~] = compute_mfsc(x_t_cut,fs,mfsc_params.win_size,mfsc_params.hop_size,...
                                    mfsc_params.min_freq,mfsc_params.max_freq,mfsc_params.num_mel_filts);

[u, sigma ] = compute_PGM( mfsc, t_cut, fs, mfsc_params.num_mel_filts);


label1(1:size(u,1)) = label;
data_u= [u label1.'];
data_s = [sigma label1.' ];



end

