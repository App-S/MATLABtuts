nodes=6;
networks=1;
weighted= 'skew' %'random' 'uniform'

switch weighted
    case {'uniform'}
        weight=ones(nodes)
    case{'random'}
        weight= rand(nodes)
    case{'skew'}
        W = [1:.1:200].^(-1.2);
    p = randi(length(W),nodes*nodes,1);
    weight = zeros(nodes);
    weight(:) = W(p);
end

for j= 1:networks
    start= zeros(nodes);
    network= ones(nodes).*((1-eye(nodes)));
    for i= 1:nodes-1
        start(i+1,i)=1;
    
    end
    start(1,nodes)=1;
    networkSys= network.*start.*weight;
end
networkSys
