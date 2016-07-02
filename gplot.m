A=[1 2; 1 3; 2 1; 2 4; 3 2; 4 1; 4 2];
adj=accumarray(A,1,[],[],0,true);
n=size(adj,1); % number of nodes
% coord=[cos((1:n).'*(2*pi/n)),sin((1:n).'*(2*pi/n))]; % points on a circle for nodes
coord=[2 2; 1 -1; -3 -3; -1 1];
gplot(A,coord,'*')