function child = mutation(parent,prob)
    %MUTATION Summary of this function goes here
    for i=1:length(parent)
        p=rand();
        if p<prob
            indices=randi([1,5],1,2);
            parent(i,[indices(1),indices(2)])=parent(i,[indices(2),indices(1)]);
        end
    end
    child=parent;
end

