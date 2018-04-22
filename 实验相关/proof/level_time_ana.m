data = load('l_t.txt');
data = sort(data);
plot(data(:,1), data(:,2), '-x');
set(gca, 'XTick', 5:1:10);
axis([5, 10, 0, 5e-5]);
xlabel('Level of Keyword in MPT');
ylabel('Time Cost(seconds)');
title('Prove');