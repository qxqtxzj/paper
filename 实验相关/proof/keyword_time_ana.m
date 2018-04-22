data1  = load('proof_time.txt');
x = data1(:,1);
y1 = data1(:,2);

data2  = load('proof_cost.txt');
for i = 1:size(data2, 1)
    data2(i, 2) = data2(i ,2) / 1024;
end
y2 = data2(:,2);

[ax,h1,h2] = plotyy(x,y1,x,y2,'plot');

set(get(ax(1),'Ylabel'),'string','document-keyword pairs/second','color','r','FontSize',18) %y1
set(get(ax(2),'Ylabel'),'string','Kilobytes','color','b','FontSize',18) %y2
xlabel('Database Size(keywords)','FontSize',18)
set(h1,'linestyle','-','color','r');   
set(h2,'linestyle','-','color','b');
legend([h1 h2],'prove throughput','proof size') %��ע������
h1.LineWidth = 1.5;
h2.LineWidth = 1.5;

set(ax(1),'Ycolor','k','FontSize',18) %�趨����Y�����ɫΪ��ɫ
set(ax(2),'Ycolor','k','FontSize',18) %�趨����Y�����ɫΪ��ɫ
set(ax(1),'ylim',[1e04,8e04],'ytick',1e04:1e04:8e04); %����y����
set(ax(2),'ylim',[1,3],'ytick',1:0.5:3)

set(ax,'xlim',[0 11e05]) % ����x�᷶Χ
hold on
scatter(ax(1),x,y1,'r^')
axes(ax(2));
hold on
scatter(x,y2,'bo')

%set (gcf,'Position',[0  0   600   500], 'color','w')
%set(gca,'FontSize',14);
grid on;