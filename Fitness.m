function [InitFunction, CostFunction, FeasibleFunction] = Fitness
InitFunction = @FitnessInit;
CostFunction = @FitnessCost;
FeasibleFunction = @FitnessFeasible;
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [MaxParValue, MinParValue, Population, OPTIONS] = FitnessInit(OPTIONS)

global MinParValue MaxParValue
Granularity = 0.1;
MinParValue = zeros(1,OPTIONS.numVar);
MaxParValue = ones(1,OPTIONS.numVar);
% Initialize population
for popindex = 1 : OPTIONS.popsize
    chrom =  rand(1,OPTIONS.numVar);
    Population(popindex).chrom = chrom;
end
OPTIONS.OrderDependent = false;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [Population] = FitnessCost(OPTIONS, Population)

% Compute the cost of each member in Population

global MinParValue MaxParValue
global data nf best_fit res
popsize = OPTIONS.popsize;
p = OPTIONS.numVar;
for popindex = 1 : popsize
    x = Population(popindex).chrom;
    [~,idx]=sort(x,'descend');
    x(idx(1:nf))=1;
    x(idx(nf+1:end))=0;
    features=data.X;
    labels=data.Y;
    Population(popindex).cost =FisherScore(features(:,x==1),labels); 
    if best_fit>Population(popindex).cost
        best_fit=Population(popindex).cost;
        res=x;
    end
end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [Population] = FitnessFeasible(OPTIONS, Population)

global MinParValue MaxParValue
for i = 1 : OPTIONS.popsize
    for k = 1 : OPTIONS.numVar
        Population(i).chrom(k) = max(Population(i).chrom(k), MinParValue(k));
        Population(i).chrom(k) = min(Population(i).chrom(k), MaxParValue(k));
    end
end
end