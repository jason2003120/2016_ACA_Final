function [ hzval ] = mel2hz( melval )
%MEL2HZ Summary of this function goes here

hzval = 700 * (exp(melval/1127.01028) - 1);
%   Detailed explanation goes here


end

