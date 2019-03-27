function plot_background(h,evt)
global background
clf;
imagesc(background);
colormap(flipud(gray));
axis square;
set(gca,'XTick',0.5:size(background,2)-0.5,'YTick',0.5:size(background,1)-0.5,...
    'XTickLabel','','YTicklabel','','dataaspect',[1 1 1],...
    'XGrid','on','YGrid','on','GridColor','k','GridAlpha',1)
set(gcf,'Position',[600,250,600,600])
hold on;
end