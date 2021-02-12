%%  Nonideal sampling
%
%   Nonideal sampling can be simulated by averaging each 2x2 block 
%   in a “continuous” image to create a new image whose pixels 
%   are the block averages of the input image and whose size 
%   is one-half the original in each dimension.
%  
%   Anyi Li
%

function nsimg = nidSample(f,plotTurn)

% f is the input image
% plotTurn controls whether you would like to see the sampled image

[m,n] = size(f);

nsimg = zeros(m/2,n/2);

for i = 1:2:m
    for j = 1:2:n
        
        nsimg((i+1)/2,(j+1)/2) = sum(sum(f(i:i+1,j:j+1)))/4;
        
    end
end

if plotTurn == 1
    
    set(figure,'position',[500 200 1000 1000]);
    set(gca,'Position',[.1 .1 .8 .75]);
    imshow(nsimg,[]);
    
end


end