clear all;
%%
start_time_1 = 0;
stop_time_1 = 1200;
start_time_2 = 0;
stop_time_2 = 1200;
acoustic_params = struct('win_size',1024,'hop_size',512,'min_freq',40,'max_freq',6000,...
                'num_mel_filts',26,'ITW',1);
% function [ data_u,data_s ] = get_feature_acoustic( fpath, mfsc_params,label,start_time, stop_time )
% male sound - label = 1

%%
fpath1 = '/Users/leechenghsun/Desktop/AudioData/audioset/male_004.wav';
fpath2 = '/Users/leechenghsun/Desktop/AudioData/audioset/female_001.wav';
%%

[data1] = get_feature_acoustic_SumtoOne(fpath1,acoustic_params,1,start_time_1,stop_time_1);

% female sound - label = 2
[data2]  = get_feature_acoustic_SumtoOne(fpath2,acoustic_params,2, start_time_2 ,stop_time_2);

% create arff

data = [data1 ; data2];
fname = 'train_feature_4_1_STO';
arffwrite(fname,data,acoustic_params);

%%

[data1] = get_feature_acoustic_Max(fpath1,acoustic_params,1,start_time_1,stop_time_1);

% female sound - label = 2
[data2]  = get_feature_acoustic_Max(fpath2,acoustic_params,2, start_time_2 ,stop_time_2);

% create arff

data = [data1 ; data2];
fname = 'train_feature_4_1_MAX';
arffwrite(fname,data,acoustic_params);

%%

[data1] = get_feature_acoustic_MinNMax(fpath1,acoustic_params,1,start_time_1,stop_time_1);

% female sound - label = 2
[data2]  = get_feature_acoustic_MinNMax(fpath2,acoustic_params,2, start_time_2 ,stop_time_2);

% create arff

data = [data1 ; data2];
fname = 'train_feature_4_1_MNM';
arffwrite(fname,data,acoustic_params);

%%
% 
% [data1] = get_feature_acoustic_DCT(fpath1,acoustic_params,1,start_time_1,stop_time_1);
% 
% % female sound - label = 2
% [data2]  = get_feature_acoustic_DCT(fpath2,acoustic_params,2, start_time_2 ,stop_time_2);
% 
% % create arff
% 
% data = [data1 ; data2];
% fname = 'train_feature_4_1_DCT';
% arffwrite(fname,data,acoustic_params);
