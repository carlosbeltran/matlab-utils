function [newimages] = newimagesindir(path)

global previmagesList

param.fgTest_dir = path;

imagesList = dir([param.fgTest_dir '/*.jpg']);

tf = structarraycompare(imagesList, previmagesList);
newimages = imagesList(~tf);

previmagesList = imagesList;
