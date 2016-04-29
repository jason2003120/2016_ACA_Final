clear all;
%%
% fpath = 'man_001.wav';
% 

fpath1 = '/Users/leechenghsun/Desktop/AudioData/man_train.wav'
fpath2 = '/Users/leechenghsun/Desktop/AudioData/women_train.wav'
acoustic_params = struct('win_size',1024,'hop_size',512,'min_freq',86,'max_freq',2000,...
                'num_mel_filts',20,'ITW',1);
% pitch_params = struct('win_size',4410,'hop_size',4410,'min_lag',40, 'max_lag',800 );
%% 
% function [ data_u,data_s ] = get_feature_acoustic( fpath, mfsc_params,label,start_time, stop_time )
% male sound - label = 1
[data1] = get_feature_acoustic(fpath1,acoustic_params,1,0,500);

% female sound - label = 2
[data2]  = get_feature_acoustic(fpath2,acoustic_params,2, 0 ,500);
%%
% mean pitch feature
% [ Po ] = get_feature_pitch( fpath, pitch_params,label,start_time, stop_time )
% P = get_feature_pitch( 'female_001.wav', pitch_params,1,0, 8 );

% create arff
fname = 'train_feature_out';
%%

data = [data1 ; data2];

%%
arffwrite(fname,data);

%%

[data3] = get_feature_acoustic(fpath1,acoustic_params,1,500,600);

% female sound - label = 2
[data4]  = get_feature_acoustic(fpath2,acoustic_params,2,500,600);
fname = 'test_feature_out';
data = [data3 ; data4];
arffwrite(fname,data);