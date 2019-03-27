function keyreleasefcn(h,evt)
global block background
index = [block.core; block.peri];
switch evt.Key
    case {'w'}
        if sum( background( min(index(:,1))-2 : max(index(:,1))+2, ...
                min(index(:,2))-2 : max(index(:,2))+2) ) == 0                
            if block.angle == 270
                block.angle = 0;
            else
                block.angle = block.angle + 90;
            end
        end
        
    case {'s'}
        if      background(index(1,1)+1,index(1,2)) + ...
                background(index(2,1)+1,index(2,2)) + ...
                background(index(3,1)+1,index(3,2)) + ...
                background(index(4,1)+1,index(4,2)) == 0
            block.core = block.core + [1  0];
        else
            fprintf('to close to fall!\n');
        end
        
    case {'a'}
        if      background(index(1,1),index(1,2)-1) + ...
                background(index(2,1),index(2,2)-1) + ...
                background(index(3,1),index(3,2)-1) + ...
                background(index(4,1),index(4,2)-1) == 0
            block.core = block.core + [0 -1];
        end
        
    case {'d'}
        if      background(index(1,1),index(1,2)+1) + ...
                background(index(2,1),index(2,2)+1) + ...
                background(index(3,1),index(3,2)+1) + ...
                background(index(4,1),index(4,2)+1) == 0
            block.core = block.core + [0  1];
            
        end
end

refresh_block();
plot_background();
plot_block();
end