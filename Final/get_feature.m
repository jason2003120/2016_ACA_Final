function [ data ] = get_feature( fpath, params,label )
%GET_FEATURE Summary of this function goes here
%   Detailed explanation goes here

[ x_t, fs, t ] = import_audio( fpath );

t_cut = t(1:fs*8);
x_t_cut = x_t(1:fs*8);

[mfsc, ~] = compute_mfsc(x_t_cut,fs,params.win_size,params.hop_size,...
                                    params.min_freq,params.max_freq,params.num_mel_filts);

[u, sigma ] = compute_PGM( mfsc, t_cut, fs, params.num_mel_filts);


label1(1:size(u,1)) = label;
data = [u sigma label1.'];



end

