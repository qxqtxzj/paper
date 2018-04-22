data = load('50000.txt');
for i = 1:size(data, 1)
    data(i, 2) = data(i ,2)*64 / (1024*1024);
end
plot(data(:,1), data(:,2), '-x');
xlabel('Database Size(keywords)');
ylabel('Storage Cost(MB)');
%title('Storage');
axis([0, 1e06, 0, 100]);
set(gca,'FontSize',18);
grid on;