function line_clearance(h, evt)
global background
bg_core = background(2:26, 2:16);

for i = size(bg_core, 1)
    if min( bg_core(i, :) ) == 1
        bg_core(i, :) = [];
        bg_core = [zeros(1, size(bg_core, 2)); bg_core];
        background = [ ones(1,17);
    ones(25,1) bg_core ones(25,1);
    ones(1,17)];
    end
end
end