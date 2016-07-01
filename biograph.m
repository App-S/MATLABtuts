A=[1 2; 1 3; 2 1; 2 4; 3 2; 4 1; 4 2]
N = 4;
adj = zeros(N);
adj(sub2ind([N,N], A(:,1),A(:,2))) = 1;

bg = biograph(adj);  % make biograph object
dolayout(bg);   % automatically calculate positions for nodes
view(bg); % what it says on the tin