function [index] = structarraycompare(array1,array2)

index = [];
for i = 1:size(array1)
    for j = 1:size(array2)
        if isequal(array1(i),array2(j))
            index(i) = 1;
            break
        end
    end
end
