close all;
clear all;
clc;

% Decoupage de pieton pour la SVM
chemin = '/home/jguichon/Documents/min_projet_git/ProjetE-ComptagePersonnes/Julien/dataPieton/';
addpath('/home/jguichon/Documents/min_projet_git/ProjetE-ComptagePersonnes/img');
addpath(genpath('/home/jguichon/Documents/min_projet_git/ProjetE-ComptagePersonnes/Julien'));

imgName = 'detection_0100.jpeg';
imgOutputName = 'pieton_10.jpeg';

xSize = 40;
ySize = 100;

img = rgb2gray(imread(imgName));
imagesc(img);colormap(gray);

[x,y] = ginput(1);

imgOut = img(y-ySize/2:y-1+ySize/2,x-xSize/2:x-1+xSize/2);
imwrite(imgOut,[chemin,imgOutputName],'jpeg');
figure;subplot(1,2,1);imagesc(img);colormap(gray);hold on;plot(x,y,'og');
subplot(1,2,2);imagesc(imgOut);colormap(gray);