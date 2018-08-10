clear 
hold off
nummer = input('Welcher Plot (1-5)? ');
fprintf('Plot%d lineare Gleichungen\n',nummer);
if nummer == 1
    % zeichne x-Achse : von (-2,0) nach (3,0)
    plot([-2 3],[0 0], 'LineWidth',2, 'Color','black');
    % bestehende Zeichnung weiterverwenden
    hold on
    axis equal;
    % zeichne y-Achse : von (0,-2) nach (0,3)
    plot([0 0],[-2 3], 'LineWidth',2, 'Color','black');
    x=-1.9:0.1:2.9;
    % zeichne y = x
    plot(x,   x, 'LineWidth',2, 'Color','red');     
    % zeichne y = -x +2
    plot(x,-x+2, 'LineWidth',2, 'Color','blue');     
    % setze die Bereichsgrenzen
    xlim([-2,3]);
    ylim([-2,3]);
    % Beschriftung
    title('Plot1: y = x  &  y = -x + 2','FontWeight','bold','FontSize', 14)
    text(1.5,2.4,'y = x','Color','red','FontWeight','bold','FontSize', 14);
    text(1.4,-0.9,'y = -x + 2','Color','blue','FontWeight','bold','FontSize', 14);
    hold off
elseif nummer == 2
    x=-1.9:0.1:2.9;
    % zeichne x-Achse : von (-2,0) nach (3,0)
    plot([-2 3],[0 0], 'LineWidth',2, 'Color','black');
    % bestehende Zeichnung weiterverwenden
    hold on
    axis equal;
    % zeichne y-Achse : von (0,-2) nach (0,3)
    plot([0 0],[-2 3], 'LineWidth',2, 'Color','black');
    % zeichne y = x
    plot(x,   x, 'LineWidth',2, 'Color','red');     
    % zeichne y = x +2
    plot(x,x+2, 'LineWidth',2, 'Color','blue');     
    xlim([-2,3]);
    ylim([-2,3]);
    title('Plot2: y = x    &    y = x + 2','FontWeight','bold','FontSize', 14)
    text(1.5,1.3,'y = x','Color','red','FontWeight','bold','FontSize', 14);
    text(0.5,2.3,'y = x + 2','Color','blue','FontWeight','bold','FontSize', 14);
    hold off
elseif nummer == 3
    [x,y]=meshgrid(-2:0.1:2,-1:0.2:1);
    z = x - y;
    grid on
    surf(x,y,z,'FACECOLOR','green')
    z = -x - 2*y + 2;
    hold on
    surf(x,y,z,'FACECOLOR','yellow')
    z = -3*x - y+3;
    surf(x,y,z,'FACECOLOR','magenta')
    title('Plot3: z=x-y    z=-x-2*y+2    z=-3*x-y+3',...
          'Color','blue',...
          'FontWeight','bold',...
          'FontSize', 14);
    hold off
elseif nummer == 4
    x=-1.9:0.1:2.9;
    % zeichne x-Achse : von (-2,0) nach (3,0)
    plot([-2 3],[0 0], 'LineWidth',2, 'Color','black');
    % bestehende Zeichnung weiterverwenden
    hold on
    axis equal;
    % zeichne y-Achse : von (0,-2) nach (0,3)
    plot([0 0],[-2 3], 'LineWidth',2, 'Color','black');
    % zeichne y = x
    plot(x,   x, 'LineWidth',2, 'Color','red');     
    % zeichne y = -x + 2
    plot(x,-x+2, 'LineWidth',2, 'Color','blue');     
    % zeichne y = 0.5*x + 0.5
    plot(x,0.5*x+0.5, 'LineWidth',2, 'Color','green');     
    title('Plot4: y = x  &  y = -x + 2  &  y = 0.5*x + 0.5','FontWeight','bold','FontSize', 14)
    xlim([-2,3]);
    ylim([-2,3]);
    text(1.5,2.4,'y = x','Color','red','FontWeight','bold','FontSize', 14);
    text(1.4,-0.9,'y = -x + 2','Color','blue','FontWeight','bold','FontSize', 14);
    text(-1.9,0.6,'y = 0.5*x + 0.5','Color','green','FontWeight','bold','FontSize', 14);
    hold off
elseif nummer == 5
    x=-1.9:0.1:2.9;
    % zeichne x-Achse : von (-2,0) nach (3,0)
    plot([-2 3],[0 0], 'LineWidth',2, 'Color','black');
    % bestehende Zeichnung weiterverwenden
    hold on
    axis equal;
    % zeichne y-Achse : von (0,-2) nach (0,3)
    plot([0 0],[-2 3], 'LineWidth',2, 'Color','black');
    % zeichne y = x
    plot(x,   x, 'LineWidth',2, 'Color','red');     
    % zeichne y = -x + 2
    plot(x,-x+2, 'LineWidth',2, 'Color','blue');     
    % zeichne y = 0.4*x + 0.3
    plot(x,0.4*x+0.3, 'LineWidth',2, 'Color','green');     
    title('Plot5: y = x  &  y = -x + 2  &  y = 0.4*x + 0.3','FontWeight','bold','FontSize', 14)
    xlim([-2,3]);
    ylim([-2,3]);
    text(1.5,2.4,'y = x','Color','red','FontWeight','bold','FontSize', 14);
    text(1.4,-0.9,'y = -x + 2','Color','blue','FontWeight','bold','FontSize', 14);
    text(-1.9,0.4,'y = 0.4*x + 0.3','Color','green','FontWeight','bold','FontSize', 14);
    hold off
else
    fprintf('Ungültige Nummer %d\n',nummer)
end
