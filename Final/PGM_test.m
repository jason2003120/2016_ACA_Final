clear all;

%%
fpath = 'man_001.wav';
ITW = 1;
% import wav file
%%                               
params = struct('win_size',1024,'hop_size',512,'min_freq',86,'max_freq',4000,...
                'num_mel_filts',20);
[ x_t, fs, t ] = import_audio( fpath );
%%

[mfsc, fs_mfsc] = compute_mfsc(x_t,fs,params.win_size,params.hop_size,...
                                    params.min_freq,params.max_freq,params.num_mel_filts);

%%
% given an  1 sec ITW
t_len = length(t);
% Xt_len = length(mfsc);
sec = t_len / fs ;
N = floor(sec);              
T = floor( fs * ITW / params.win_size);   % number of mfsc feature per second
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
% var = zeros(N,N);
% sigma = zeros(N,1);
% norm_s = zeros(N,1);
% compute the variance vector
for i = 1:N    
l = 1;
    for k = N*(i-1)+1:i*N 
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
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 