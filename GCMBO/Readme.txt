
GCMBO
Improving Monarch Butterfly Optimization (MBO) by using Greedy strategy and self-adaptive Crossover operator
Gai-Ge Wang
February 10, 2016

email:  
       gaigewang@163.com  
       gaigewang@gmail.com
       gaige@ualberta.ca 

The files in this zip archive are MATLAB m-files that can be used to study GCMBO algorithm.

Main paper:
Gai-Ge Wang, Xinchao Zhao, Suash Deb. A Novel Monarch Butterfly Optimization with Greedy Strategy and Self-adaptive Crossover Operator. In: the 2015 2nd Intl. Conference on Soft Computing & Machine Intelligence (ISCMI 2015), Hong Kong, November 23-24, 2015. IEEE, pp 45-50. doi: 10.1109/ISCMI.2015.19

the basic MBO paper:
Gai-Ge Wang, Suash Deb, and Zhihua Cui, Monarch Butterfly Optimization.
Neural Computing and Applications, in press.
DOI: 10.1007/s00521-015-1923-y
MATLAB code can be found in the following website:
https://github.com/ggw0122/Monarch-Butterfly-Optimization
http://www.mathworks.com/matlabcentral/fileexchange/50828-monarch-butterfly-optimization
http://www.pudn.com/downloads684/sourcecode/others/detail2761602.html
http://www.pudn.com/downloads684/sourcecode/others/detail2761594.html


Note: 
1) I do not make any effort to rewrite some general codes, while I reuse some codes according to Prof. Dan Simon. We should stand the shoulder of giant, therefore I have more time to focus on our method. In the following, I will provide the detailed description about all the codes. 
2) The MATLB R2015b is used when implementing our method. 
3) The C++ code of GCMBO can be found in the web soon. 
4) As discussed in the paper, the GCMBO cannot find the best solution for each run. Our research team will improve it and distribute the codes in our future research. 

The MATLAB files can be used to reproduce the results in the paper, or to do your own experiments. The paper and the software are available now. The software is freely available for any purposes (it is on the Internet, after all) although I would of course appreciate an acknowledgement if you use it as part of a paper or presentation.

The MATLAB files and their descriptions are as follows:

Ackley.m: 
This is the benchmark functions discussed in the paper. You can use it as template to write your own function if you are interested in testing or optimizing some other functions. This code is modified according to Dan Simon. The original one is available at http://academic.csuohio.edu/simond/bbo.

GCMBO_Generation_V1.m, GCMBO_FEs_V1.m:
GCMBO algorithm. The fixed generations (iterations) and fixed Function Evaluations (FEs) are considered as termination condition for GCMBO_Generation_V1.m and GCMBO_FEs_V1.m, respectively. It can be used to optimize some function by typing, for example, the following at the MATLAB prompt:
>> GCMBO_Generation_V1(@Ackley);
This command would run GCMBO_Generation_V1 on the Ackley function (which is codified in Ackley). 
>> GCMBO_FEs_V1(@Ackley);
This command would run GCMBO_FEs_V1 on the Ackley function (which is codified in Ackley). 

Init.m: 
This contains various initialization settings for the optimization methods. You can edit this file to change the population size, the generation count limit, the problem dimension, the maximum Function Evaluations (FEs), and the percentage of population of any of the optimization methods that you want to run. This code is modified according to Dan Simon. The original one is available at http://academic.csuohio.edu/simond/bbo.

ClearDups.m: 
This is used by each optimization method to get rid of duplicate population members and replace them with randomly generated individuals. This code is modified according to Dan Simon. The original one is available at http://academic.csuohio.edu/simond/bbo.

ComputeAveCost.m: 
This is used by each optimization method to compute the average cost of the population and to count the number of legal (feasible) individuals. This code is the same as Dan Simon. The original one are available at http://academic.csuohio.edu/simond/bbo.

PopSort.m: 
This is used by each optimization method to sort population members from most fit to least fit. This code is the same with Dan Simon. The original one is available at http://academic.csuohio.edu/simond/bbo. 

Conclude1.m, Conclude2.m: 
They conclude the processing of each optimization method. It does common processing like outputting results. Conclude1.m and Conclude2.m are used in GCMBO_Generation_V1.m and GCMBO_FEs_V1.m, respectively. They are modified according to Dan Simon. The original one is available at http://academic.csuohio.edu/simond/bbo.

I hope that this software is as interesting and useful to you as is to me. Feel free to contact me with any comments or questions.


