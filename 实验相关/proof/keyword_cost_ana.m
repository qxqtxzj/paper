data  = load('proof_cost.txt');
for i = 1:size(data, 1)
    data(i, 2) = data(i ,2) / 1024;
end
plot(data(:,1), data(:,2), '-x');
axis([0, 1e06, 1, 3]);
xlabel('Database Size(keywords)');
ylabel('Communication Cost(KBytes)');
%title('Proof');