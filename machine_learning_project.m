%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Machine Learning Project Assignment
%   Comparison of Classifiers
% 
%   Optimization and Data Analytics (E17)
%   Aarhus University
%
%   Hannes Bartle
%   hannes.bartle@uni.au.dk
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all
close all
clc

%% Set Path Variable
addpath('misc/')
addpath('classifiers/')
addpath(genpath('data/'))

%% Load the MNIST Image Data
train_images_MNIST = loadMNISTImages('train-images.idx3-ubyte');
test_images_MNIST = loadMNISTImages('t10k-images.idx3-ubyte');
train_labels_MNIST = loadMNISTLabels('train-labels.idx1-ubyte');
test_labels_MNIST = loadMNISTLabels('t10k-labels.idx1-ubyte');

%% Load the ORL Image Data
load('orl_data.mat')
load('orl_lbls.mat')
images_ORL = data;
clear data
labels_ORL = lbls;
clear lbls

%% Split up ORL Data
[~,number_of_images]= size(images_ORL);

train_percentage = 0.7;
train_number = 0.7*number_of_images;
test_number = number_of_images - train_number;

% Random Permutation
perm = randperm(number_of_images);

% Shuffle Images
train_images_ORL = images_ORL(:,perm(1:train_number));
test_images_ORL = images_ORL(:,perm(train_number+1:end));
% Shuffle the corresponding labels
train_labels_ORL = labels_ORL(perm(1:train_number));
test_labels_ORL = labels_ORL(perm(train_number+1:end));


%% Dimensionality Reduction using PCA
%TODO 



%% Nearest Class Classifier Evaluation


% Classification on Raw Image Data
[labels_classified_MNIST, means_MNIST] = nc_classify(train_images_MNIST,...
                                                     test_images_MNIST,...
                                                     train_labels_MNIST);

[labels_classified_ORL, means_ORL] = nc_classify(train_images_ORL,...
                                                 test_images_ORL,...
                                                 train_labels_ORL);
                          
                          

                          
                         





