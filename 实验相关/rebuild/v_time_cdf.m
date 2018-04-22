figure;
data = load('1000000_verify.txt', 'r');
h = cdfplot(data(:,3));
set(h,'linewidth',1.5)
axis([0, 1.5e-04, 0, 1]);
xlabel('Time cost (seconds)');
ylabel('CDF');
title(' ');
set(gca,'FontSize',18);
set (gca,'position',[0.15,0.175,0.75,0.75] );
grid on;