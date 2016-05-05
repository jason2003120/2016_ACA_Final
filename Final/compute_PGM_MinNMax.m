function [ norm_u, norm_s ] = compute_PGM_MinNMax( x_t, fs, t, win_size, hop_size, ...
                                            min_freq, max_freq, num_mel_filts,ITW )
% COMPUTE_PGM_NEW Summary of this function goes here


% MFSC :

% compute spectrogram
% window = win('hamming', win_size)
noverlap = win_size - hop_size;

[s,f,~] = spectrogram(x_t,hamming(win_size),noverlap,win_size,fs);


% create mel filterbank

% f_mel = hz2mel(f);
min_mel_freq = hz2mel(min_freq);
max_mel_freq = hz2mel(max_freq);
p = length(f);

f_mel = hz2mel(f.');


mel = linspace(min_mel_freq, max_mel_freq, num_mel_filts);


% find the reference points
near = find_nearest(f_mel.',mel);
s_size = size(s);
h = zeros(s_size(1),num_mel_filts);
h_norm = zeros(s_size(1),num_mel_filts);
norm_log_mel_power = zeros(s_size(2),num_mel_filts);


% windowing with mel filter bank 
% the first mel bank

for i = 1:p
    if f(i) < f(near(2)) && f(i) >= f(near(1))
        h(i,1) = (f(near(2)) - f(i)) / (f(near(2)) - f(near(1)));
    else
        h(i,1) = 0;
    end
end

    

% the other mel bank
for k = 2:(num_mel_filts - 1)
    for i = 1:p
        if f(i) < f(near(k-1))
            h(i,k) = 0;
        elseif f(near(k-1)) <= f(i) && f(i) <= f(near(k))
            h(i,k) = (f(i) - f(near(k-1))) / (f(near(k)) - f(near(k-1)));
            
        elseif f(near(k)) <= f(i) && f(i)<= f(near(k+1))
            h(i,k) = (f(near(k+1)) - f(i)) / (f(near(k+1)) - f(near(k)));
            
        elseif f(i) > f(near(k+1))
            h(i,k) = 0;
        end
    end
end


% the last mel bank

for i = 1:p
    if f(i) > f(near(num_mel_filts-1)) && f(i) <= f(near(num_mel_filts))
        h(i,num_mel_filts) = (f(i) - f(near(num_mel_filts-1))) / (f(near(num_mel_filts)) - f(near(num_mel_filts-1)));
    else
        h(i,num_mel_filts) = 0;
    end
end

% normalize the filter bank
for i = 1:num_mel_filts-1
    h_norm(:,i) = h(:,i) / sum(h(:,i));    
end
% norm for the last filter
h_norm(:,num_mel_filts) =  h(:,num_mel_filts) /  (2*sum(h(:,num_mel_filts))-1 );

% power spectrum in dB
        
mel_power = s.' * h_norm;
log_mel_power = 20*log(abs(mel_power));

% nomalize the feature
for i = 1:s_size(2)
    norm_log_mel_power(i,:) = (log_mel_power(i,:) - min(log_mel_power(i,:)) ) / (max(log_mel_power(i,:) - min(log_mel_power(i,:))));
end

mfsc =  norm_log_mel_power;

% PGM

t_len = length(t);

sec = t_len / fs ;
N = floor(sec);              
T = floor( fs * ITW / hop_size);   % number of mfsc feature in ITW second



% compute the mean vector
u = zeros(N, num_mel_filts);
norm_u =  zeros(N, num_mel_filts);
% compute the mean vector
for i = 1:floor(N/ITW)
    Xt_vec = mfsc((i-1)*T +1:i*T,:);
    u(i,:) = 1/T * sum(Xt_vec);
end

% compute the variance vector
dia = zeros(T,num_mel_filts);
sigma = zeros(N,num_mel_filts);
norm_s = zeros(N,num_mel_filts);
% compute the variance vector
for i = 1:floor(N/ITW)    
l = 1;
    for k = T*(i-1)+1:i*T 
    % var = vec(N*1) * vec(N*1)^T
    var = (mfsc(k,:)- u(i,:)).' * (mfsc(k,:)-u(i,:));   
    l = l + 1;    
    dia(l,:) = diag(var);
    end
    sigma(i,:) = 1/T * sum(dia);
end

% normalize with respective maximum
% for i = 1:size(u,1)
%     norm_u(i,:) = u(i,:) / max(u(i,:));
%     norm_s(i,:) = sigma(i,:) / max(sigma(i,:));
% end

% normalize feature vector sum to 1
% for i = 1:size(u,1)
%     norm_u(i,:) = u(i,:) / sum(u(i,:));
%     norm_s(i,:) = sigma(i,:) / sum(sigma(i,:));
% end

% normalize with min and max
for i = 1:size(u,1)
    norm_u(i,:) = ( u(i,:) - min(u(i,:)) ) / ( max(u(i,:)) - min(u(i,:)) );
    norm_s(i,:) = ( sigma(i,:) - min(sigma(i,:)) ) / ( max(sigma(i,:)) - min(sigma(i,:)) );
end



end

