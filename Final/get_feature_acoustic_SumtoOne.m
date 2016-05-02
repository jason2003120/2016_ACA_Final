function [ pgm_feature ] = get_feature_acoustic_SumtoOne( fpath, params,label,start_time, stop_time )
%GET_FEATURE Summary of this function goes here
%   Detailed explanation goes here

[ x_t, fs, t ] = import_audio( fpath );

% cutting time
t_cut = t(start_time*fs+1:fs*stop_time);
x_t_cut = x_t(start_time*fs+1:fs*stop_time);


% acoustic feature
% [mfsc, ~] = compute_mfsc(x_t_cut,fs,mfsc_params.win_size,mfsc_params.hop_size,...
%                                     mfsc_params.min_freq,mfsc_params.max_freq,mfsc_params.num_mel_filts);
% 
%   [u, sigma ] = compute_PGM_Max(x_t_cut, fs, t_cut, params.win_size, params.hop_size,...
%                                     params.min_freq, params.max_freq, params.num_mel_filts,...
%                                     params.ITW);
[u, sigma ] = compute_PGM_SumtoOne(x_t_cut, fs, t_cut, params.win_size, params.hop_size,...
                                    params.min_freq, params.max_freq, params.num_mel_filts,...
                                    params.ITW);
%                                 
% [u, sigma ] = compute_PGM_MinNMax(x_t_cut, fs, t_cut, params.win_size, params.hop_size,...
%                                     params.min_freq, params.max_freq, params.num_mel_filts,...
%                                     params.ITW);
% [u, sigma ] = compute_PGM_DCT(x_t_cut, fs, t_cut, params.win_size, params.hop_size,...
%                                     params.min_freq, params.max_freq, params.num_mel_filts,...
%                                     params.ITW, );


label1(1:size(u,1)) = label;
pgm_feature = [u sigma label1.'];




end

