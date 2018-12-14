function [result] = GCMBO_FC(temp_data,temp_nf)
global data nf best_fit res
%best_fit records the current best fitness value
data=temp_data;
nf=temp_nf;
best_fit=inf;
GCMBO_Generation_v1(@Fitness,false);
result=res;
end

