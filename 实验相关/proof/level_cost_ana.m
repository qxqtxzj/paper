data = load('l_c.txt');
data = sort(data);
for i = 1:size(data, 1)
    data(i, 2) = data(i ,2) / 1024;
end
plot(data(:,1), data(:,2), '-x');
axis([5, 10, 1, 3]);
set(gca, 'XTick', 5:1:10);
xlabel('Depth of keyword in MPT');
ylabel('Size(KB)');
axis([5, 10, 1, 3]);
set(gca,'FontSize',18);
grid on;