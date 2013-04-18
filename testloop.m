while true
    %path = 'Y:\# DATASETS\IITIntervalsSeq28_03_2013\Seq000\';
    path = 'Y:\DemoReID\CAM_0\';
    res = newimagesindir(path);
    res(:).name
    % Visualize last one
    last = length(res);
    if last ~= 0
        imgTmp = imread([path res(last).name]);
        imshow(imgTmp)
    end
    fprintf('Got %i new images.\n',last)
    %for j = 1: length(res)
    %    res(j).name
    %    imgTmp = imread([path res(j).name]);
    %    imshow(imgTmp);
    %end
    pause(1)
end
