clear all;
%%

% function [] = arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  ) 

fpath1 = '/Users/leechenghsun/Desktop/AudioData/man_train.wav'
fpath2 = '/Users/leechenghsun/Desktop/AudioData/women_train.wav'
acoustic_params = struct('win_size',1024,'hop_size',512,'min_freq',86,'max_freq',2000,...
                'num_mel_filts',20,'ITW',1);
start_time_1 = 0;
stop_time_1 = 100;
start_time_2 = 0;
stop_time_2 = 100;

fname = 'train_feature_001';
arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  );