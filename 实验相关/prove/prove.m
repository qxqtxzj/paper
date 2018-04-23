figure;
matrix = load('proof_time.txt');
p1 = plot(matrix(:,1), matrix(:,2), '-x','linewidth',1.5);
hold on;

axis([0, 1e06,  0, 8e04])
xlabel('Database size (keywords)');
ylabel('Throughput');
%title('Update');
%axis([0, 1e06, 1e4, 1e5]);
set(gca,'FontSize',18);
set (gca,'position',[0.15,0.175,0.75,0.75] );
grid on;
