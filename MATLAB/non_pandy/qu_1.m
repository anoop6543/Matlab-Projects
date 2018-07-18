clc
clear all
close all

% for i=-2:0.1:2
%     for j=-2:0.1:2
%         [a,b]=ode45('qst_1',[0,0.3],[i j]);
% plot(b(:,1),b(:,2));
% hold on;
%     end
% end

figure;
for i=-1:0.1:1
    for j=-1:0.1:1
        [a,b]=ode45('qst_1',[0,0.9],[i j]);
plot(b(:,1),b(:,2));
hold on;
    end
end