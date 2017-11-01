clear all,close all, clc
load mnist.mat

X_train = training.images;
X_train = squeeze(reshape(X_train,size(X_train,1)*size(X_train,2),1,size(X_train,3)));
X_train = X_train'; % N by D matrix

Y_train = training.labels;

X_test = test.images;
X_test = squeeze(reshape(X_test,size(X_test,1)*size(X_test,2),1,size(X_test,3)));
X_test = X_test'; % N by D matrix

Y_test = test.labels;

clear training test

% X_train = X_train(1:2000,:);
% Y_train = Y_train(1:2000,:);
tic
% layer = main(gpuArray(X_train), gpuArray(Y_train));
layer = main(X_train, Y_train);
toc

