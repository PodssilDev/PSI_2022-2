clearvars
close all
clc


tic
A = rand(100);
x = svd(A);
toc

fun = @() svd(A);
resultado = timeit(fun,1);

fun2 = @() myfun(A);
resultado2 = timeit(fun2,1);

function y = myfun(a)
    y = svd(a);
end
