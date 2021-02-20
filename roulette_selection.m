%roulette wheel selection
function indices = roulette_selection(z)
    cumulative=cumsum(z);
    cumulative=cumulative./cumulative(length(z));
    indices=[];
    for i=1:length(z)
        target=rand();
       
        index=1;
        while target>cumulative(index)
            index=index+1;
        end
        indices=[indices,index];  
    end
    
end







%proprtionate selection
%function selected = prop_selection(z)
%    avg=mean(z);
%    selected=[];
 %   for i=1:length(z)
  %      y=round(z(i)/avg);
   %     for j=1:y
    %        selected=[selected,i];
     %   end
    %end
    
%end

