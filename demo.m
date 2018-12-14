addpath 'GCMBO'
data  = load('ionosphere.mat');
data.Y=grp2idx(Data.Y);
%set the number of selected features
nf=floor(size(data.X,2)/2);
%best_fit records the current best fitness value
res=GCMBO_FC(data,nf);
disp(['feature selected result:',num2str(res)]);


