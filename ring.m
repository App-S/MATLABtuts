nodes=6;
networks=1;
weighted= 'uniform' %'skew' %'random'
alphaAll = fliplr([.01:.01:.99]);
alpha = alphaAll(1:length(alphaAll));
 p = 1-alpha;
Q=p;
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

  for i = 1:networks
            network = zeros(nodes);
            s = rand(nodes*nodes,1);
            s(s<randi(numel(Q)) = 0;
            s(:) = ceil(s);
            network(:) = s;
            networkSys(:,:,i) = network.*weight.*abs(eye(nodes)-1);
        end  
% for j= 1:networks
%     start= zeros(nodes);
%     network= ones(nodes).*((1-eye(nodes)));
%     for i= 1:nodes-1
%         start(i+1,i)=1;
%     
%     end
%     start(1,nodes)=1;
%     networkSys= network.*start.*weight;
% end
networkSys
