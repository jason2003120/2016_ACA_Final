clear all;
%%
fpath1 = 'C:\Users\User\Desktop\audioset\recut\man_001_new.wav';
fpath2 = 'C:\Users\User\Desktop\audioset\recut\women_001_new.wav';
acoustic_params = struct('win_size',1412,'hop_size',970,'min_freq',40,'max_freq',6000,...
                'num_mel_filts',26,'ITW',1);
            
            
%%
% % train_feature_duration
% start_time_1 = 0;
% stop_time_1 = 800;
% start_time_2 = 0;
% stop_time_2 = 800;
% fname = 'train_feature_800';
% % function [] = arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  ) 
% arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  );
% % train_feature_duration
% start_time_1 = 0;
% stop_time_1 = 600;
% start_time_2 = 0;
% stop_time_2 = 600;
% fname = 'train_feature_600';
% % function [] = arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  ) 
% arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  );
% % train_feature_duration
% start_time_1 = 0;
% stop_time_1 = 400;
% start_time_2 = 0;
% stop_time_2 = 400;
% fname = 'train_feature_400';
% arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  );
% train_feature_duration
start_time_1 = 0;
stop_time_1 = 1000;
start_time_2 = 0;
stop_time_2 = 1000;
fname = 'train_feature_1000';
% function [] = arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  ) 
arff_create( fname, fpath1, fpath2, acoustic_params, start_time_1, stop_time_1,start_time_2,stop_time_2  );
% train_feature_duration
% start_time_1 = 0;
% stop_time_1 = 200;
% start_time_2 = 0;
% stop_time_2 = 200;
% fname = 'train_feature_200';

fprintf('ok!!\n');
%%
% testing
% test_feature_start_stop
fpath3 = 'C:\Users\User\Desktop\audioset\recut\man_002_new.wav';
fpath4 = 'C:\Users\User\Desktop\audioset\recut\women_002_new.wav';



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
