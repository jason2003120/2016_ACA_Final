clear all;
%%
fpath1 = 'C:\Users\User\Desktop\audioset\male_train.wav';
fpath2 = 'C:\Users\User\Desktop\audioset\female_train.wav';
acoustic_params = struct('win_size',512,'hop_size',256,'min_freq',40,'max_freq',6000,...
                'num_mel_filts',26,'ITW',1);
             
%%

% train_feature_duration
start_time_1 = 0;
stop_time_1 = 1000;
start_time_2 = 0;
stop_time_2 = 1000;
fname = 'train_feature_1000';
% function [] = arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  ) 
arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  );
%%
start_time_1 = 0;
stop_time_1 = 1200;
start_time_2 = 0;
stop_time_2 = 1200;
fname = 'train_feature_1200';
% function [] = arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  ) 
arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  );
%%
start_time_1 = 0;
stop_time_1 = 1400;
start_time_2 = 0;
stop_time_2 = 1400;
fname = 'train_feature_1400';
% function [] = arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  ) 
arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  );
%%
start_time_1 = 0;
stop_time_1 = 1600;
start_time_2 = 0;
stop_time_2 = 1600;
fname = 'train_feature_1600';
% function [] = arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  ) 
arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  );
%%
start_time_1 = 0;
stop_time_1 = 1800;
start_time_2 = 0;
stop_time_2 = 1800;
fname = 'train_feature_1800';
% function [] = arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  ) 
arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  );
%%
start_time_1 = 0;
stop_time_1 = 2000;
start_time_2 = 0;
stop_time_2 = 2000;
fname = 'train_feature_2000';
% function [] = arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  ) 
arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  );
%%
start_time_1 = 0;
stop_time_1 = 3000;
start_time_2 = 0;
stop_time_2 = 3000;
fname = 'train_feature_3000';
% function [] = arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  ) 
arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  );
%%
start_time_1 = 0;
stop_time_1 = 4000;
start_time_2 = 0;
stop_time_2 = 4000;
fname = 'train_feature_4000';
% function [] = arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  ) 
arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  );


fprintf('ok!!\n');




%% testing
% test_feature_start_stop
fpath3 = 'C:\Users\User\Desktop\audioset\male_005.wav';
fpath4 = 'C:\Users\User\Desktop\audioset\female_005.wav';



fname = 'test_feature_0_300';
start_time_1 = 0;
stop_time_1 = 300;
start_time_2 = 0;
stop_time_2 = 300;
% function [] = arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  ) 
arff_create( fname, fpath3, fpath4, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  );  

fname = 'test_feature_300_600';
start_time_1 = 300;
stop_time_1 = 600;
start_time_2 = 300;
stop_time_2 = 600;
% function [] = arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  ) 
arff_create( fname, fpath3, fpath4, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  );  

fname = 'test_feature_600_900';
start_time_1 = 600;
stop_time_1 = 900;
start_time_2 = 600;
stop_time_2 = 900;
% function [] = arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  ) 
arff_create( fname, fpath3, fpath4, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  );  

fname = 'test_feature_900_1200';
start_time_1 = 900;
stop_time_1 = 1200;
start_time_2 = 900;
stop_time_2 = 1200;
% function [] = arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  ) 
arff_create( fname, fpath3, fpath4, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  );  
 
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