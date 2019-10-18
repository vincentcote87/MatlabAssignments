clc;
clear;

figure;
hold on;
axis([0 10 0 10]);

%Question 1
shortestTime = 1000;
try
    highScore = load('highScore.mat');
    shortestTime = highScore.time;
    disp('High Score');
    disp(highScore.playerName);
    disp(['Time: ' num2str(shortestTime)]);
    disp(['Accuracy: ' num2str(highScore.accuracy) '%']); 
catch
    disp('No high score yet, make it count!');
end

hit = true;
score = 0;
err = 0.1;
numOfTargets = 6;
targetSize = 10; %Question 3
shots = 0;
penality = 0; %Question 6
playerName = input('Please enter your name: ', 's');

tic;
while score < numOfTargets
    if hit
        [x,y] = getPoints();
        plot(x, y, 'o','MarkerSize', targetSize, 'Color', [1,0,0]);
        hit = false;
        penality = 0;
        for i = 0:score/2 %Question 5
            [a,b] = getPoints();
            plot(a, b,'*', 'MarkerSize', 10, 'Color', [0.5,0.75,1]);
        end
    end
    [user_x, user_y] = ginput(1);
    shots = shots + 1;
    plot(user_x, user_y, '+');
    if sqrt((x-user_x)^2 + (y-user_y)^2) < (err * targetSize/4)
        hit = true;
        pause(penality);
        score = score + 1;
        targetSize = targetSize - 1;
    else
        penality = penality + 1;
    end
end
time = toc;
title(getMedal(time));

%Question 4
accuracy = (numOfTargets/shots)*100;
disp(['Your shots hit ' num2str(accuracy) '% of the time']);

%Only save if it beats the high score, no need to keep all other previous
%games
if time < shortestTime
    save('highScore.mat', 'time', 'playerName', 'accuracy');
    disp(['Congratulations ' playerName ', you have the new best time!']);
end

%Question 2
function str = getMedal(time)
    if time < 7
        medal = 'Gold';
    elseif time < 10
        medal = 'Silver';
    elseif time < 13
        medal = 'Bronze';
    else
        medal = '';
    end
        str = [num2str(time) ' ' medal];
end

function [x,y] = getPoints()
    %*8 + 1 so that it is never on the boundries or axies 
    x = rand(1) * 8 + 1;
    y = rand(1) * 8 + 1;
end