function [ train_features, train_labels ] = create_set( fpath1, fpath2, params )
%CREARE_SET Summary of this function goes here
%   Detailed explanation goes here
[mfccs1, fs_mfcc1] = compute_mfccs(fpath1,params.win_size,params.hop_size,...
                                    params.min_freq,params.max_freq,params.num_mel_filts,params.n_dct);

length1 = length(mfccs1);
label1(1:length1) = 1;
[mfccs2, fs_mfcc2] = compute_mfccs(fpath2,params.win_size,params.hop_size,...
                                    params.min_freq,params.max_freq,params.num_mel_filts,params.n_dct);

length2 = length(mfccs2);
label2(1:length2) = 2;


% feature matrix
train_features = cat(1,mfccs1 , mfccs2).';

% label vector
train_labels = [label1 label2];

end

