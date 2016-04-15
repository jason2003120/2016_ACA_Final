function [ mfccs, fs_mfcc ] = compute_mfccs( filepath, win_size, hop_size, ...
                                            min_freq, max_freq, num_mel_filts, ...
                                                n_dct)
                                            
                                            %%
% import wav file
                                            
[x_t, fs, time] = import_audio(filepath);  


% compute spectrogram
% window = win('hamming', win_size)
noverlap = win_size - hop_size;

[s,f,t] = spectrogram(x_t,hamming(win_size),noverlap,win_size,fs);


% create mel filterbank

% f_mel = hz2mel(f);
min_mel_freq = hz2mel(min_freq);
max_mel_freq = hz2mel(max_freq);
p = length(f);

f_mel = hz2mel(f.');
x_length = length(x_t);

mel = linspace(min_mel_freq, max_mel_freq, num_mel_filts);


% find the reference points
near = find_nearest(f_mel.',mel);

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


% power spectrum in dB
        
mel_power = s.' * h;
log_mel_power = 20*log(abs(mel_power));


%%
% DCT for mel spectrum
for i = 1:length(log_mel_power)
    mel_dct(i,:)  = dct(log_mel_power(i,:));
end


% remove the first DCT cofficients


for i = 2:n_dct
    mel_dct_rem(:,i-1) = mel_dct(:,i);
end

dct_length = length(mel_dct_rem);

% normalize the feature vector
for i = 1:dct_length
    norm_dct(i,:) = (mel_dct_rem(i,:) - min(mel_dct_rem(i,:)) ) / (max(mel_dct_rem(i,:) - min(mel_dct_rem(i,:))));
end

%%
% normalize feature vector sum to 1


for i = 1:dct_length
    norm1_dct(i,:) = norm_dct(i,:) / sum(norm_dct(i,:));
    
end

mfccs = norm1_dct;

fs_mfcc = x_length / length(mfccs);







                                            
                                            
end

