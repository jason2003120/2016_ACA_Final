clear all;
%%
% fpath = 'man_001.wav';

params = struct('win_size',1024,'hop_size',512,'min_freq',86,'max_freq',4000,...
                'num_mel_filts',40);
            
%% 
% male sound
data1 = get_feature('man_001',params,1);
%%
% female sound
data2 = get_feature('female_001.wav',params,2);
%%
% create arff
fname = 'feature_out';
%%

data = [data1 ; data2];

%%
arffwrite(fname,data);