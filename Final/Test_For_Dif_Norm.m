clear all;
%%
acoustic_params = struct('win_size',512,'hop_size',256,'min_freq',40,'max_freq',6000,...
                'num_mel_filts',26,'ITW',1);
% function [ data_u,data_s ] = get_feature_acoustic( fpath, mfsc_params,label,start_time, stop_time )
% male sound - label = 1

%%
% fpath1 = 'C:\Users\User\Desktop\audioset\man_001_new.wav';
% fpath2 = 'C:\Users\User\Desktop\audioset\women_001_new.wav';

fpath1 = '/Users/leechenghsun/Desktop/recut/man_001_new';
fpath2 = '/Users/leechenghsun/Desktop/recut/women_001_new';
%%
start_time_1 = 0;
stop_time_1 = 200;
start_time_2 = 0;
stop_time_2 = 200;
[data1] = get_feature_acoustic_MinNMax(fpath1,acoustic_params,1,start_time_1,stop_time_1);

% female sound - label = 2
[data2]  = get_feature_acoustic_MinNMax(fpath2,acoustic_params,2, start_time_2 ,stop_time_2);

% create arff

data = [data1 ; data2];
fname = 'train_feature_200';
arffwrite(fname,data,acoustic_params);

%%
%
start_time_1 = 0;
stop_time_1 = 400;
start_time_2 = 0;
stop_time_2 = 400;
[data1] = get_feature_acoustic_MinNMax(fpath1,acoustic_params,1,start_time_1,stop_time_1);

% female sound - label = 2
[data2]  = get_feature_acoustic_MinNMax(fpath2,acoustic_params,2, start_time_2 ,stop_time_2);

% create arff

data = [data1 ; data2];
fname = 'train_feature_400';
arffwrite(fname,data,acoustic_params);
%
start_time_1 = 0;
stop_time_1 = 600;
start_time_2 = 0;
stop_time_2 = 600;
[data1] = get_feature_acoustic_MinNMax(fpath1,acoustic_params,1,start_time_1,stop_time_1);

% female sound - label = 2
[data2]  = get_feature_acoustic_MinNMax(fpath2,acoustic_params,2, start_time_2 ,stop_time_2);

% create arff

data = [data1 ; data2];
fname = 'train_feature_600';
arffwrite(fname,data,acoustic_params);
%
start_time_1 = 0;
stop_time_1 = 800;
start_time_2 = 0;
stop_time_2 = 800;
[data1] = get_feature_acoustic_MinNMax(fpath1,acoustic_params,1,start_time_1,stop_time_1);

% female sound - label = 2
[data2]  = get_feature_acoustic_MinNMax(fpath2,acoustic_params,2, start_time_2 ,stop_time_2);

% create arff

data = [data1 ; data2];
fname = 'train_feature_800';
arffwrite(fname,data,acoustic_params);

%
start_time_1 = 0;
stop_time_1 = 1000;
start_time_2 = 0;
stop_time_2 = 1000;
[data1] = get_feature_acoustic_MinNMax(fpath1,acoustic_params,1,start_time_1,stop_time_1);

% female sound - label = 2
[data2]  = get_feature_acoustic_MinNMax(fpath2,acoustic_params,2, start_time_2 ,stop_time_2);

% create arff

data = [data1 ; data2];
fname = 'train_feature_1000';
arffwrite(fname,data,acoustic_params);

%
start_time_1 = 0;
stop_time_1 = 1200;
start_time_2 = 0;
stop_time_2 = 1200;
[data1] = get_feature_acoustic_MinNMax(fpath1,acoustic_params,1,start_time_1,stop_time_1);

% female sound - label = 2
[data2]  = get_feature_acoustic_MinNMax(fpath2,acoustic_params,2, start_time_2 ,stop_time_2);

% create arff

data = [data1 ; data2];
fname = 'train_feature_1200';
arffwrite(fname,data,acoustic_params);

fprintf('ok!!!\n')
%% 
% 
% for testing data
fpath1 = 'C:\Users\User\Desktop\audioset\man_002_new.wav';
fpath2 = 'C:\Users\User\Desktop\audioset\women_002_new.wav';

start_time_1 = 0;
stop_time_1 = 600;
start_time_2 = 0;
stop_time_2 = 600;

[data1] = get_feature_acoustic_MinNMax(fpath1,acoustic_params,1,start_time_1,stop_time_1);

% female sound - label = 2
[data2]  = get_feature_acoustic_MinNMax(fpath2,acoustic_params,2, start_time_2 ,stop_time_2);

% create arff
data = [data1 ; data2];
fname = 'test_feature_600';
arffwrite(fname,data,acoustic_params);
fprintf('ok!!!');


