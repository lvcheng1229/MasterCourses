function DrawCube(x, d)
    % cube 8 points
    points = [
        -1 -1 -1
        -1 -1 1
        1 -1 1
        1 -1 -1
        -1 1 -1
        -1 1 1
        1 1 1
        1 1 -1
    ];

    % homonous
    points = [points, ones(size(points, 1), 1)];

    % line idx
    lines = [
        1 2
        2 3
        3 4
        4 1
        5 6
        6 7
        7 8
        8 5
        1 5
        2 6
        3 7
        4 8
    ];

    % model matrix
    % scale
    S = [
        d 0 0 0
        0 d 0 0
        0 0 d 0
        0 0 0 1
    ];
    % translate
    T = [
        1 0 0 x(1)
        0 1 0 x(2)
        0 0 1 x(3)
        0 0 0 1
    ];
    model = T * S;

    % view matrix
    view = [
        1 0 0 0
        0 1 0 0
        0 0 -1 0
        0 0 0 1
    ];

    % project matrix
    project = [
        1 0 0 0
        0 1 0 0
        0 0 1 0
        0 0 1 0
    ];

    screenPos = project * view * model * points';
    screenPos = (screenPos(1:3, :) ./ screenPos(4, :))';
%     for i = 1 : size(screenPos, 1)
%         plot(screenPos(i, 1), screenPos(i, 2), 'y.', 'MarkerSize', 32);
%     end
    
    for i = 1 : size(lines, 1)
        plot(screenPos(lines(i,:), 1), screenPos(lines(i,:), 2), 'c', 'linewidth', 2);
    end
end