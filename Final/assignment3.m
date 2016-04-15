
clear all;
%%

% compute training feature set
% piano_train trumpet_train
fpath1 = 'audio3/piano_train.wav';

fpath2 = 'audio3/trumpet_train.wav';
params = struct('win_size',1024,'hop_size',512,'min_freq',86,'max_freq',8000,...
                'num_mel_filts',40,'n_dct',15);

[ train_features, train_labels ] = create_set( fpath1, fpath2, params );


% compute test feature set

fpath3 = 'audio3/piano_test.wav';

fpath4 = 'audio3/trumpet_test.wav';

[ test_features, test_labels ] = create_set( fpath3, fpath4, params );

% generte predicted labels and calculate the accuracy
[ predicted_labels ] = predict_labels( train_features, train_labels, test_features );
[ overall_accuracy, per_class_accuracy ] = score_prediction( test_labels, predicted_labels );


%%
clear all;
%%
% compute training feature set

fpath1 = 'audio3/trombone_train.wav';

fpath2 = 'audio3/trumpet_train.wav';
params = struct('win_size',1024,'hop_size',512,'min_freq',86,'max_freq',8000,...
                'num_mel_filts',40,'n_dct',15);

[ train_features, train_labels ] = create_set( fpath1, fpath2, params );


% compute test feature set

fpath3 = 'audio3/trombone_test.wav';

fpath4 = 'audio3/trumpet_test.wav';


[ test_features, test_labels ] = create_set( fpath3, fpath4, params );


% generte predicted labels and calculate the accuracy
[ predicted_labels ] = predict_labels( train_features, train_labels, test_features );
[ overall_accuracy, per_class_accuracy ] = score_prediction( test_labels, predicted_labels );
