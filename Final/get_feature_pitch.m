function [ Po ] = get_feature_pitch( fpath, pitch_params,label,start_time, stop_time )
%GET_FEATURE Summary of this function goes here
%   Detailed explanation goes here

[ x_t, fs, t ] = import_audio( fpath );

% cutting time
t_cut = t(start_time*fs+1:fs*stop_time);
x_t_cut = x_t(start_time*fs+1:fs*stop_time);
% pitch feature
[ pitch, ~  ] = detect_pitch_acf( x_t_cut, t_cut, fs, pitch_params.win_size, pitch_params.hop_size, ...
                                        pitch_params.min_lag, pitch_params.max_lag );
pitch_len = size(pitch,2);
pitch_len_persec = floor(pitch_len /10);
P = zeros(pitch_len_persec,1);
%%
% P-min
% for i = 1:pitch_len_persec
%     P(i) = min(pitch(10*(i-1)+1:10*(i-1)+10));   
% end

% label1(1:size(P,1)) = label;
% 
% Po = [P label1.'];

%% AP
label1(1:size(pitch,2)) = label;
Po = [pitch.' label1.'];

end