function [ feature_u, feature_s, label_u,label_s ] = create_set_female( x_t,fs,params )
%CREARE_SET Summary of this function goes here
%   Detailed explanation goes here


[mfsc, ~] = compute_mfsc(x_t,fs,params.win_size,params.hop_size,...
                                    params.min_freq,params.max_freq,params.num_mel_filts);

[u, sigma ] = compute_PGM( mfsc, t, fs, params.num_mel_filts);

% transfer array to vector
feature_u = u(:)';
feature_s = sigma(:)';


% label vector

length_u = length(feature_u);
length_s = length(feature_s);


label_u(1:length_u) = 2;
label_s(1:length_s) = 2;

end

