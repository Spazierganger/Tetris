clc; clear; close all;

mode = 0;
mode = input('ѡ���Ѷȣ�\n1.�򵥣� 2.��ͨ�� 3.����\n');

global background % top bottom left_edge right_edge
background = [ ones(1,17);
    ones(25,1) zeros(25, 15) ones(25,1);
    ones(1,17)];
% top = 2;
% bottom = 26;
% left_edge = 2;
% right_edge = 16;

block_definition();

fig = figure;
plot_background();
set(fig,'windowkeyreleasefcn',@keyreleasefcn);
% set(fig,'windowkeypressfcn',@keypressfcn);

global t;
t=timer;
t.StartDelay = 1;
t.ExecutionMode = 'fixedRate';
t.Period = 1.75 - 0.5 * mode;
t.TimerFcn = @BlockFall;
if mode ~= 0
    start(t);
end

