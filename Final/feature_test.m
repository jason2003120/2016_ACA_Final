clear all;
%%
fpath = 'man_001.wav';

acoustic_params = struct('win_size',1024,'hop_size',512,'min_freq',86,'max_freq',4000,...
                'num_mel_filts',26);
pitch_params = struct('win_size',4410,'hop_size',4410,'min_lag',40, 'max_lag',800 );
%% 
% function [ data_u,data_s ] = get_feature_acoustic( fpath, mfsc_params,label,start_time, stop_time )
% male sound - label = 1
[data1_u, data1_s] = get_feature_acoustic('man_001',acoustic_params,1,0,2.5);

%%
% female sound - label = 2
[data2_u, data2_s]  = get_feature_acoustic('female_001.wav',acoustic_params,2, 0 ,8);
%%
% mean pitch feature
% [ Po ] = get_feature_pitch( fpath, pitch_params,label,start_time, stop_time )
P = get_feature_pitch( 'female_001.wav', pitch_params,1,0, 8 );

%%
% create arff
fname = 'feature_out';
%%

data = [data1 ; data2];

%%
arffwrite(fname,data);