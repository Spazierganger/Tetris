function plot_block()
global block
if block.flag == 'on'
    rectangle('Position',[fliplr(block.core) - 0.5,1,1],'FaceColor','r');
    rectangle('Position',[fliplr(block.peri(1,:)) - 0.5,1,1],'FaceColor','r');
    rectangle('Position',[fliplr(block.peri(2,:)) - 0.5,1,1],'FaceColor','r');
    rectangle('Position',[fliplr(block.peri(3,:)) - 0.5,1,1],'FaceColor','r');
end
end