data1  = load('proof_time.txt');
x = data1(:,1);
y1 = data1(:,2);

data2  = load('proof_cost.txt');
for i = 1:size(data2, 1)
    data2(i, 2) = data2(i ,2) / 1024;
end
y2 = data2(:,2);

[ax,h1,h2] = plotyy(x,y1,x,y2,'plot');

set(get(ax(1),'Ylabel'),'string','Throughput','color','r','FontSize',18) %y1
set(get(ax(2),'Ylabel'),'string','Size (KB)','color','b','FontSize',18) %y2
xlabel('Database size (keywords)','FontSize',18)
set(h1,'linestyle','-','color','r');   
set(h2,'linestyle','- -','color','b');
legend([h1 h2],'Throughput','Size') %标注两条线
legend boxoff
h1.LineWidth = 1.5;
h2.LineWidth = 1.5;
%h1.MarkerSize = 15;
%h2.MarkerSize = 15;

set(ax(1),'Ycolor','k','FontSize',18) %设定两个Y轴的颜色为黑色
set(ax(2),'Ycolor','k','FontSize',18) %设定两个Y轴的颜色为黑色
set(ax(1),'ylim',[1e04,8e04],'ytick',1e04:1e04:8e04); %设置y轴间隔
set(ax(2),'ylim',[1,3],'ytick',1:0.5:3)

set(ax,'xlim',[0 11e05]) % 设置x轴范围
hold on
scatter(ax(1),x,y1,'r^')
axes(ax(2));
hold on
scatter(x,y2,'bo')
set (gca,'position',[0.1,0.175,0.75,0.75] );
%set (gcf,'Position',[0  0   600   500], 'color','w')
%set(gca,'FontSize',14);
grid on;