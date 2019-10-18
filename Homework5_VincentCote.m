err = 0.1; %-- error margin
figure; hold on;
xlim ([0 2]);
ylim ([0 2]);
targetSize = 10; %Question 3
penality = 0; %Question 6
score = 0; %-- number of correct hits
hit = true; %- will change to 'false' if target is not hit
tic
while score < 6 %-- repeat loop until number of correct hits is 6 
    if hit
        x=rand(1); %- location of target
        y=rand(1);
        plot(x,y,'o', 'MarkerSize', targetSize, 'Color', [1,0,0]);
        hit = false;
        penality = 0;
        for i = 0:score/2 %Question 5
            plot(rand(1),rand(1),'*', 'MarkerSize', 10, 'Color', [0.5,0.75,1]);
        end
    end
    [x1 y1] = ginput(1); %- location of click
    plot(x1,y1, '+');
    dist = sqrt((x-x1)^2+(y-y1)^2); %-- distance between target and click 
    if  dist< err
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

%Question 2
function str = getMedal(time)
    if time < 6
        medal = 'Gold';
    elseif time < 9
        medal = 'Silver'
    elseif time < 12
        medal = 'Bronze'
    else
        medal = ''
    end
        str = [num2str(time) ' ' medal];
end