function block_definition(h,evt)
global block
%                 type 1: 
% 
%                 ***
%                  *
% 
%                 type 2:
% 
%                 **
%                 **
% 
%                 type 3:
% 
%                 ****
% 
%                 type 4:
% 
%                 **
%                  **
% 
%                 type 5:
% 
%                  **
%                 **
% 
%                 type 6:
% 
%                 *
%                 ***
% 
%                 type 7:
% 
%                   *
%                 ***

type = randperm(7,1);
% type = 2;

block = struct('core',[2,9], ...  % start point
    'angle',0,... % 0,90,180,270  anti-clockwise
    'flag','on',...% on, off
    'type',type,...
    'peri',zeros(3,2));
refresh_block();  % to generate the peri
end