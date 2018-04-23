figure;
matrix = load('add_time.txt');
p1 = plot(matrix(:,1), matrix(:,2), '-x','linewidth',1.5);
hold on;
matrix1 = load('del_time.txt');
p2 = plot(matrix1(:,1), matrix1(:,2), '-square','linewidth',1.5);
axis([0, 1e06,  0, 20e04])
xlabel('Database size (keywords)');
ylabel('Throughput');
%title('Update');
p = [p1, p2];
legend(p, 'Add', 'Del');
legend boxoff
axis([0, 1e06, 1e4, 5e4]);
set(gca,'FontSize',18);
set (gca,'position',[0.15,0.175,0.75,0.75] );
grid on;
