clear all;
%%
start_time_1 = 0;
stop_time_1 = 1200;
start_time_2 = 0;
stop_time_2 = 1200;
acoustic_params = struct('win_size',512,'hop_size',256,'min_freq',40,'max_freq',6000,...
                'num_mel_filts',26,'ITW',1);
            
        
%%
fpath1 = '/Users/leechenghsun/Desktop/AudioData/audioset/male_004.wav';
fpath2 = '/Users/leechenghsun/Desktop/AudioData/audioset/female_001.wav';

% train_feature_[malefile]_[femalefile]
fname = 'train_feature_4_1';

% function [] = arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  ) 
arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  );

fpath1 = '/Users/leechenghsun/Desktop/AudioData/audioset/male_005.wav';
fpath2 = '/Users/leechenghsun/Desktop/AudioData/audioset/female_005.wav';

% train_feature_[malefile]_[femalefile]
fname = 'train_feature_5_5';

start_time_1 = 0;
stop_time_1 = 1200;
start_time_2 = 0;
stop_time_2 = 1200;
% function [] = arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  ) 
arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  );  
 
fprintf('ok!!\n');
%%

% %%
% fpath1 = '/Users/leechenghsun/Desktop/AudioData/audioset/male_001.wav';
% fpath2 = '/Users/leechenghsun/Desktop/AudioData/audioset/female_001.wav';
% 
% % train_feature_[malefile]_[femalefile]
% fname = 'train_feature_1_1';
% 
% % function [] = arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  ) 
% arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  );
% 
% 
% 
% fpath1 = '/Users/leechenghsun/Desktop/AudioData/audioset/male_001.wav';
% fpath2 = '/Users/leechenghsun/Desktop/AudioData/audioset/female_002.wav';
% fname = 'train_feature_1_2';
% arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  );
% 
% fpath1 = '/Users/leechenghsun/Desktop/AudioData/audioset/male_001.wav';
% fpath2 = '/Users/leechenghsun/Desktop/AudioData/audioset/female_003.wav';
% fname = 'train_feature_1_3';
% arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  );
% 
% 
% fpath1 = '/Users/leechenghsun/Desktop/AudioData/audioset/male_001.wav';
% fpath2 = '/Users/leechenghsun/Desktop/AudioData/audioset/female_004.wav';
% fname = 'train_feature_1_4';
% arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  );
% 
% %%
% 
% fpath1 = '/Users/leechenghsun/Desktop/AudioData/audioset/male_002.wav';
% fpath2 = '/Users/leechenghsun/Desktop/AudioData/audioset/female_001.wav';
% 
% % train_feature_[malefile]_[femalefile]
% fname = 'train_feature_2_1';
% 
% % function [] = arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  ) 
% arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  );
% 
% 
% 
% fpath1 = '/Users/leechenghsun/Desktop/AudioData/audioset/male_002.wav';
% fpath2 = '/Users/leechenghsun/Desktop/AudioData/audioset/female_002.wav';
% fname = 'train_feature_2_2';
% arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  );
% 
% fpath1 = '/Users/leechenghsun/Desktop/AudioData/audioset/male_002.wav';
% fpath2 = '/Users/leechenghsun/Desktop/AudioData/audioset/female_003.wav';
% fname = 'train_feature_2_3';
% arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  );
% 
% 
% fpath1 = '/Users/leechenghsun/Desktop/AudioData/audioset/male_002.wav';
% fpath2 = '/Users/leechenghsun/Desktop/AudioData/audioset/female_004.wav';
% fname = 'train_feature_2_4';
% arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  );