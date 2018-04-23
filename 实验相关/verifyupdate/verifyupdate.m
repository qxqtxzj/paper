figure;
matrix = load('verifyupdate.txt');
p1 = plot(matrix(:,1), matrix(:,2), '-x','linewidth',1.5);
hold on;

axis([0, 1e06,  4e-5, 7e-5])
xlabel('Database size (keywords)');
ylabel('Average Time(s)');
set(gca,'FontSize',18);
set (gca,'position',[0.15,0.175,0.75,0.75] );
grid on;