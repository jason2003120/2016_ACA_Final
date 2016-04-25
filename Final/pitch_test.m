clear all;

%%

fpath = 'man_001.wav';
% fpath = 'female_001.wav';

pitch_params = struct('win_size',4410,'hop_size',4410,'min_lag',36, 'max_lag',800 );


[ x_t, fs, t ] = import_audio( fpath );

t_cut = t(1:fs*8);
x_t_cut = x_t(1:fs*8);
%%
% [ pitch, t  ] = detect_pitch_acf( x_t_cut, t_cut, fs, pitch_params.win_size, pitch_params.hop_size, ...
%                                         pitch_params.min_lag, pitch_params.max_lag );
% plot(t,pitch,'.k');

%%


[ pitch, t  ] = detect_pitch_yin( x_t_cut, t_cut, fs, pitch_params.win_size, pitch_params.hop_size, ...
                                        pitch_params.min_lag, pitch_params.max_lag );
% plot(t,pitch,'.k');
