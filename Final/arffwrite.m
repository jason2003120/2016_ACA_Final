% This function is reference from,
% http://www.mathworks.com/matlabcentral/fileexchange/45954-write-data-in-arff-format
% by Muhammad
% 19 Mar 2014 (Updated 19 Mar 2014)

%
function arffwrite(fname,data,acoustic_params)
% fname This is file name without extension
% data is m x n where m are the instances and n-1 are the features. The last
% column is the class as integer

sss=size(data,2)-1;
filename1=strcat(fname,'.arff');
out1 = fopen (filename1, 'w+');
aa1=strcat('@relation',{' '},fname,'-weka.filters.unsupervised.attribute.NumericToNominal-Rlast');

fprintf(out1,' %% acoustic_params.win_size: %d\n', acoustic_params.win_size);
fprintf(out1,' %% acoustic_params.hop_size: %d\n', acoustic_params.hop_size);
fprintf(out1,' %% acoustic_params.min_freq: %d\n', acoustic_params.min_freq);
fprintf(out1,' %% acoustic_params.max_freq: %d\n', acoustic_params.max_freq);
fprintf(out1,' %% acoustic_params.num_mel_filts: %d\n', acoustic_params.num_mel_filts);
fprintf(out1,' %% acoustic_params.ITW: %d\n', acoustic_params.ITW);

fprintf (out1, '%s\n', char(aa1));
for jj=1:sss
fprintf (out1, '@attribute %s numeric\n',num2str(jj));
end
n_classes=max(unique(data(:,end)));
txt1=strcat('@attribute',{' '},num2str(sss+1),{' {'});


% class integer
for ii=1:n_classes
txt1=strcat(txt1,num2str(ii),{','});    
end
txt1=strcat(txt1,{'}'});

fprintf (out1, '%s\n\n',char(txt1));
fprintf (out1,'@data\n');

fclose(out1);

dlmwrite (filename1, data, '-append' );