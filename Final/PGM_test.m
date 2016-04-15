clear all;

%%
fpath = 'man_001.wav';

% import wav file
%%                               
params = struct('win_size',1024,'hop_size',512,'min_freq',86,'max_freq',4000,...
                'num_mel_filts',40);
[ x_t, fs, t ] = import_audio( fpath );
%%

[mfsc, fs_mfsc] = compute_mfsc(x_t,fs,params.win_size,params.hop_size,...
                                    params.min_freq,params.max_freq,params.num_mel_filts);

%%
% given an  1 sec ITW
t_len = length(t);
Xt_len = length(mfsc);
sec = t_len / fs ;
N = floor(sec);              
T = floor( Xt_len / sec);
u = zeros(N,params.num_mel_filts);
sigma = zeros(N,N);
var = zeros(N,params.num_mel_filts);

%%
% compute the mean vector


% i = 2;
%     Xt_vec = mfsc((i-1)*N +1:i*N,:);
%     u(i,:) = 1/T * sum(Xt_vec);
%     var = (Xt_vec(i,:) - u(i,:)) .* (Xt_vec(i,:) - u(i,:)).^T;
%     sigma = 1/T * sum(var);

%%
% compute the mean vector
for i = 1:N
    Xt_vec = mfsc((i-1)*N +1:i*N,:);
    u(i,:) = 1/T * sum(Xt_vec);
end

%%

% % compute the variance vector
% i = 1;
%     
%     var = (Xt_vec(i,:) - u(i,:)) .* (Xt_vec(i,:) - u(i,:)).^T;
%     sigma(i,:) = 1/T * sum(var);

%%
% compute the variance vector
for i = 1:N    

    Xt_vec = mfsc((i-1)*N +1:i*N,:);
    var = (Xt_vec- u) * (Xt_vec - u).';
    sigma(i,:) = 1/T * sum(var);
end



%%
% sigma(i,:) = 1/T * sum(var);
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 