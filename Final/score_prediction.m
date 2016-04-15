function [ overall_accuracy, per_class_accuracy ] = score_prediction( test_labels, predicted_labels )
%SCORE_PREDICTION Summary of this function goes here
%   Detailed explanation goes here




label_length = length(test_labels);

%%
for i = 1: label_length
    if test_labels(i) ~= 1
        label2_start = i;
        break;
    end
end


%%

% checking accuracy

count = 0;
count_1 = 0;
count_2 = 0;
for k = 1 : label_length
    if predicted_labels(k) == test_labels(k)
        count = count + 1;
    end
end

overall_accuracy = count / label_length;


%% 
% class1 accuracy

for k = 1 : label2_start -1
    if predicted_labels(k) == test_labels(k)
        count_1 = count_1 + 1;
    end
end
class1_acc = count_1 / (label2_start - 1);

%% 
% class2 accuracy

for k = label2_start : label_length
    if predicted_labels(k) == test_labels(k)
        count_2 = count_2 + 1;
    end
end


class2_acc = count_2 / (label_length - label2_start+1);


%%
per_class_accuracy = [class1_acc;class2_acc];



end

