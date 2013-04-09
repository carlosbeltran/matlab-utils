while true
    path = 'Y:\# DATASETS\IITIntervalsSeq28_03_2013\Seq000\';
    res = newimagesindir(path);
    %res(:).name
    for j = 1: length(res)
        res(j).name
        imgTmp = imread([path res(j).name]);
        imshow(imgTmp);
    end
    pause(1)
end
