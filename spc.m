% Single Point Crossever
function child = spc(parent,prob)
    n=randperm(length(parent));%taking parent combinations randomly
    child=[];
    for k=1:2:length(parent)-1
      a=parent(n(k),[1:5]);
      b=parent(n(k+1),[1:5]);
      p=rand();
      if p<prob
      %swapping the starting bits because de2bi has least significant
        index=randi([1,5],1,1);
        temp=a([1:index]);
        a([1:index])=b([1:index]);
        b([1:index])=temp;
      end
      child=[child;a;b];
    end  
end

