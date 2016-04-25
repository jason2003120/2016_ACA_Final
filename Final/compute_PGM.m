    function [ u, sigma ] = compute_PGM( mfsc, t, fs, num_mel_filts  )
%PGM Summary of this function goes here
%   Detailed explanation goes here
% given an  1 sec ITW
t_len = length(t);
Xt_len = length(mfsc);
sec = t_len / fs ;
N = floor(sec);              
T = floor( Xt_len / sec); % number of mfsc feature per second
u = zeros(N,num_mel_filts);
sigma = zeros(N,N);
var = zeros(N,num_mel_filts);


% compute the mean vector
for i = 1:N
    Xt_vec = mfsc((i-1)*N +1:i*N,:);
    u(i,:) = 1/T * sum(Xt_vec);
end


% compute the variance vector
for i = 1:N    

    Xt_vec = mfsc((i-1)*N +1:i*N,:);
    var = (Xt_vec- u) * (Xt_vec - u).';
    sigma(i,:) = 1/T * sum(var);
end

end

