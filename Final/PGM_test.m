clear all;
% 0429 revise Xt_vec = mfsc((i-1)*T +1:i*T,:);
% replace N by T
% T = floor( fs * ITW / params.hop_size);
%%
start_time = 0;
stop_time = 100;
fpath = 'LizNelson_ImComingHome_RAW_04_01.wav'
[ x_t1, fs, t1 ] = import_audio( fpath );

% cutting time
t = t1(start_time*fs+1:fs*stop_time);
x_t = x_t1(start_time*fs+1:fs*stop_time);
% fpath = 'man_001.wav';
ITW = 1;
% import wav file
%%                               
params = struct('win_size',1024,'hop_size',512,'min_freq',40,'max_freq',6000,...
                'num_mel_filts',20);
%%

[mfsc, fs_mfsc] = compute_mfsc(x_t,fs,params.win_size,params.hop_size,...
                                    params.min_freq,params.max_freq,params.num_mel_filts);
                                
num_mel_filts = params.num_mel_filts;

%%
% given an  1 sec ITW
t_len = length(t);
% Xt_len = length(mfsc);
sec = t_len / fs ;
N = floor(sec);              
T = floor( fs * ITW / params.hop_size);   % number of mfsc feature per second
% u = zeros(N,params.num_mel_filts);
% norm_u =  zeros(N,params.num_mel_filts);
% sigma = zeros(N,N);
% var = zeros(N,params.num_mel_filts);

%%
% compute the mean vector


% i = 2;
%     Xt_vec = mfsc((i-1)*N +1:i*N,:);
%     u(i,:) = 1/T * sum(Xt_vec);
%     var = (Xt_vec(i,:) - u(i,:)) .* (Xt_vec(i,:) - u(i,:)).^T;
%     sigma = 1/T * sum(var);

%%
u = zeros(N,params.num_mel_filts);
norm_u =  zeros(N,params.num_mel_filts);
% compute the mean vector
% i = 500;
for i = 1:floor(N/ITW)
    Xt_vec = mfsc((i-1)*T +1:i*T,:);
    u(i,:) = 1/T * sum(Xt_vec);
end

%%

% % compute the variance vector
% i = 1;
%     
%     var = (Xt_vec(i,:) - u(i,:)) .* (Xt_vec(i,:) - u(i,:)).^T;
%     sigma(i,:) = 1/T * sum(var);

%%
% var = zeros(N,N);
% sigma = zeros(N,1);
% norm_s = zeros(N,1);
% compute the variance vector
% compute the variance vector
var = zeros(num_mel_filts,num_mel_filts);
sigma = zeros(N,num_mel_filts);
norm_s = zeros(N,num_mel_filts);
% compute the variance vector
for i = 1:floor(N/ITW)    
l = 1;
    for k = T*(i-1)+1:i*T 
    % var = vec(N*1) * vec(N*1)^T
    var = (mfsc(k,:)- u(i,:)).' * (mfsc(k,:)-u(i,:));
    
    l = l + 1;
    
    end
    sigma(i,:) = 1/T * sum(var);
end



%%
% normalize with respective maximum


for i = 1:size(u,1)
    norm_u(i,:) = u(i,:) / max(u(i,:));
    norm_s(i,:) = sigma(i,:) / max(sigma(i,:));
end



% % normalize feature vector sum to 1
% 
% 
% for i = 1:dct_length
%     norm1_dct(i,:) = norm_dct(i,:) / sum(norm_dct(i,:));
%     
% end
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 