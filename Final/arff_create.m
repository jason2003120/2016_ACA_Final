function [] = arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  )
% This function will create arff file for the audio input file
% The audio's start time and stop time can be specified
% The mfcc parameters can be specified with a structure, acoustic_params
% label 1 is for male's sound, label 2 is for female's sound
% The output file name can be created by fname.

% function [ data_u,data_s ] = get_feature_acoustic( fpath, mfsc_params,label,start_time, stop_time )
% male sound - label = 1
[data1] = get_feature_acoustic(fpath1,acoustic_params,1,start_time_1,stop_time_1);

% female sound - label = 2
[data2]  = get_feature_acoustic(fpath2,acoustic_params,2, start_time_2 ,stop_time_2);

% create arff

data = [data1 ; data2];
arffwrite(fname,data,acoustic_params);


end

