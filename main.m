clear
clc
population_size=10;
bounds=[0,31];
cross_over_prob=0.7;
mutation_prob=0.02;
%generate initial population within the bounds
pop_init=randi(bounds,1,population_size)
%encode
parent=de2bi(pop_init,5);
child=[];
for i=1:50
    fprintf("iteration:%d ",i);
    population=bi2de(parent)
    z=fobj(parent);
    
    selected_indices=roulette_selection(z);
    selected_solutions=[];
    
    for j=1:length(selected_indices)
        selected_solutions=[selected_solutions;parent(selected_indices(j),[1:5])];
    end
    child=spc(selected_solutions,cross_over_prob);
    child=mutation(child,mutation_prob);
    parent=child;
end
final_pop=bi2de(child)
z=fobj(child);
[max_fit,max_ind]=max(z);
max_fit
max_sol=bi2de(child(max_ind,[1:5]))
