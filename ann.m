run feature_extraction.m
feat_testandtrain = [feat_train;feat_test];
label_testandtrain = [label_train;label_test];

%label_testandtrain = label_testandtrain';

[label_size,~] = size(label_testandtrain);
output_label = zeros(label_size,4);
for i = 1:label_size
    output_label(i,label_testandtrain(i))=1; 
end