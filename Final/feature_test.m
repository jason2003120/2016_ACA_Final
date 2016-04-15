clear all;
%%
fpath = 'man_001.wav';

params = struct('win_size',1024,'hop_size',512,'min_freq',86,'max_freq',4000,...
                'num_mel_filts',40);
[ x_t, fs, t ] = import_audio( fpath );

%%
[mfsc, fs_mfsc] = compute_mfsc(x_t,fs,params.win_size,params.hop_size,...
                                    params.min_freq,params.max_freq,params.num_mel_filts);

[u, sigma ] = compute_PGM( mfsc, t, fs, params.num_mel_filts);