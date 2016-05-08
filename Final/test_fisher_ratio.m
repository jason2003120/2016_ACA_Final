
clear all;
%%
fpath1 = '/Users/leechenghsun/Desktop/recut/man_001_new.wav';
fpath2 = '/Users/leechenghsun/Desktop/recut/women_001_new.wav';
acoustic_params = struct('win_size',512,'hop_size',256,'min_freq',40,'max_freq',6000,...
                'num_mel_filts',20,'ITW',1);


%%
start_time_1 = 0;
stop_time_1 = 1000;
start_time_2 = 0;
stop_time_2 = 1000;
[data1] = get_feature_acoustic_Max(fpath1,acoustic_params,1,start_time_1,stop_time_1);

% female sound - label = 2
[data2]  = get_feature_acoustic_Max(fpath2,acoustic_params,2, start_time_2 ,stop_time_2);
fcol = acoustic_params.num_mel_filts;


d = size(data1,1);
f = zeros(d,acoustic_params.num_mel_filts);

%%
for i = 1:d
    ud = ( data1(i,1:fcol) -  data2(i,1:fcol) ).^2 ; 
    sd = data1(i,fcol + 1: 2 * fcol).^2 + ...
           data2(i,fcol + 1: 2 * fcol).^2;
    f(i,:) = ud / sd;
    maxf(i) = max(f(i,:));
end
    o = max(maxf);