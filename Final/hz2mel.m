function [ mel ] = hz2mel( hzval )
%HZ2MEL Summary of this function goes here

mel = 1127.01028 * log(1 + hzval / 700);
%   Detailed explanation goes here


end

