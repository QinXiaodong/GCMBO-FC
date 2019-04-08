# GCMBO-FC
<a href="https://996.icu"><img src="https://img.shields.io/badge/link-996.icu-red.svg" alt="996.icu" /></a>
[![LICENSE](https://img.shields.io/badge/license-Anti%20996-blue.svg)](https://github.com/996icu/996.ICU/blob/master/LICENSE)

Feature selection with Fisher criterion and Monarch butterfly optimization

Xiaodong Qin & Xiabi Liu
December 15, 2018

email:  
       qinxiaodong@bit.edu.cn  
       liuxiabi@bit.edu.cn 

The files in this zip archive are MATLAB m-files that can be used to study GCMBO-FC algorithm.

MATLAB code can be found in the following website:
https://github.com/QinXiaodong/GCMBO-FC


Note: 
1) I do not make any effort to rewrite GCMBO algorithm except for the parameter setting of the number of variables in each population member. 
2) The MATLAB R2018b is used when implementing our method. 

The MATLAB files and their descriptions are as follows:

Fitness.m: 
The fitness function based on Fisher criterion.

FisherScore.m:
The function calculating the Fisher score for whole feature subset.

GCMBO_FC.m:
The feature selection framework based on Fisher criterion and GCMBO.

demo.m:
A demo of how to use the GCMBO-FC feature selection framework. 

I hope that this software is as interesting and useful to you as is to me. Feel free to contact me with any comments or questions.
