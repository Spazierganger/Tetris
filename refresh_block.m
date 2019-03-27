function refresh_block()
global block
switch block.type
    case {1}
        if block.angle == 0
            block.peri = [block.core + [0 -1];block.core + [0  1];block.core + [1  0]];
        elseif block.angle == 180
            block.peri = [block.core + [0 -1];block.core + [0  1];block.core + [-1 0]];
        elseif block.angle == 90
            block.peri = [block.core + [1  0];block.core + [-1 0];block.core + [0  1]];
        elseif block.angle == 270
            block.peri = [block.core + [1  0];block.core + [-1 0];block.core + [0 -1]];
        end
        
    case {2}
        block.peri = [block.core + [1  1];block.core + [0  1];block.core + [1  0]];
        
    case {3}
        if block.angle == 0 || block.angle == 180
            block.peri = [block.core + [0 -1];block.core + [0  1];block.core + [0  2]];
        elseif block.angle == 90 || block.angle == 270
            block.peri = [block.core + [1  0];block.core + [2  0];block.core + [-1 0]];
        end
        
    case {4}
        if block.angle == 0 || block.angle == 180
            block.peri = [block.core + [0 -1];block.core + [1  0];block.core + [1  1]];
        elseif block.angle == 90 || block.angle == 270
            block.peri = [block.core + [0 -1];block.core + [1 -1];block.core + [-1 0]];
        end
        
    case {5}
        if block.angle == 0 || block.angle == 180
            block.peri = [block.core + [0  1];block.core + [1  0];block.core + [1 -1]];
        elseif block.angle == 90 || block.angle == 270
            block.peri = [block.core + [0  1];block.core + [1  1];block.core + [-1 0]];
        end
        
    case {6}
        if block.angle == 0
            block.peri = [block.core + [0 -1];block.core + [0 -2];block.core + [1  0]];
        elseif block.angle == 90
            block.peri = [block.core + [1  0];block.core + [2  0];block.core + [0  1]];
        elseif block.angle == 180
            block.peri = [block.core + [-1 0];block.core + [0  1];block.core + [0  2]];
        elseif block.angle == 270
            block.peri = [block.core + [-1 0];block.core + [-2 0];block.core + [0 -1]];
        end
        
    case {7}
        if block.angle == 0
            block.peri = [block.core + [0  1];block.core + [0  2];block.core + [1  0]];
        elseif block.angle == 90
            block.peri = [block.core + [-1 0];block.core + [-2 0];block.core + [0  1]];
        elseif block.angle == 180
            block.peri = [block.core + [-1 0];block.core + [0 -1];block.core + [0 -2]];
        elseif block.angle == 270
            block.peri = [block.core + [1  0];block.core + [2  0];block.core + [0 -1]];
        end
end

end