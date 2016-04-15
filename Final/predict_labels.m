function [ predicted_labels ] = predict_labels( train_features, train_labels, test_features )
%PREDICT_LABELS Summary of this function goes here
%   Detailed explanation goes here

%%

% size extracting
train_feature_size = size(train_features);
test_feature_size = size(test_features);

% num_train_feature = train_feature_size(1);
num_train_instances = train_feature_size(2);

% num_test_feature = test_feature_size(1);
num_test_instances = test_feature_size(2);

%%
% perform dot product
for i = 1: num_test_instances
    
    for j = 1: num_train_instances     
        pro(j) = sum(test_features(:,i).* train_features(:,j));        
    end
     
    [~,index] = max(pro);
    predicted_labels(i) = train_labels(index);
end

end

