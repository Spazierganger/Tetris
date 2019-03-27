function destroy_block(h,evt)
global block background
block.flag = 'off';

index = [block.core; block.peri];
background(index(1,1),index(1,2)) = 1;
background(index(2,1),index(2,2)) = 1;
background(index(3,1),index(3,2)) = 1;
background(index(4,1),index(4,2)) = 1;
plot_background();

clear block;
end