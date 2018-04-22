figure;
matrix = load('add_time_level.txt');
plot(matrix(:,1), matrix(:,2), '-x');
hold on;
matrix1 = load('del_time_level.txt');
plot(matrix1(:,1), matrix1(:,2), '-o');
axis([8, 10,  0, 20e04])
xlabel('Depth of MPT Tree');
ylabel('Throughout(pair/second)');
title('Update');