function [cost] = FisherScore(features,labels)
unique_labels=unique(labels);
miu=mean(features);
S_b=zeros(size(features,2));
for label_idx = 1:length(unique_labels)
   temp_features=features(labels==unique_labels(label_idx),:);
   temp_miu=mean(temp_features);
   S_b=S_b+size(temp_features,1)*(temp_miu-miu)'*(temp_miu-miu);
end
S_t=(features-miu)'*(features-miu);
gamma=1e-6;
fisher_cost=trace(S_b*(S_t+gamma*eye(size(S_t)))^-1);
cost=1/fisher_cost;
end

