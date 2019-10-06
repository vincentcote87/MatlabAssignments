clc;
clear;

%Question 1
disp("Question 1");
i = 12;
v = i;
while i < 50
    disp(['In loop, i = ' num2str(i)]);
    i = i + 5;
    v = [v i];
end
disp(['Out of the loop with i = ' num2str(i)]);

%Question 2
disp("Question 2");
i = 4;
disp(['your final i is ' num2str(loop(i))]); % see loop function at bottom

%Question 3
disp("Question 3 - See figure");
figure;
subplot(1,2,1);
plot(0, 0);
axis([0 1 0 1]);
subplot(1,2,2);
bar(1:1:length(v), v);

%Question 4
disp("Question 4");
for j = v
    if ~isnumeric(j)
        disp('There is a non number in v');
        break;
    else
        disp([num2str(j) ' is a numer']);
    end
end

% or we can just look at the entire array as it must all be the same type
if ~isnumeric(v)
    disp('Elements of v are not numbers');
end

%Question 5
disp("Question 5");
disp(['The average of the values in v = ' num2str(mean(v))]);

%Question 6
disp("Question 6");
i = input('please enter a value for i: ');
disp(['your final i is ' num2str(loop(i))]); % see loop function at bottom

%Question 7
disp('Question 7');
disp('Click 3 points on the empty plot to draw a continuous line');
[x,y] = ginput(3);
plot(x,y);
axis([0 1 0 1]);
continueScript = input('Press enter to continue');

%Question 8
disp('Question 8');
m = 26;
n = 23;
i = -5;
Arr = ones(m,n);
for a = 1:m
    j = -13;
    for b = 1:n
        Arr(a,b) = (i*a) + (j*b) * (i*a);
        j = j + 1;
    end
    i = i + 1;
end
       
%Question 9
disp('Question 9 - See figure');
hold off;
subplot(1,1,1);
surf(Arr);

%Question 10
disp('Question 10');
rowTotals = sum(Arr, 2);
if rowTotals(2) > rowTotals(4)
    disp(['Row 2 = ' num2str(rowTotals(2)) ' is bigger than row 4 = ' num2str(rowTotals(4))]);
else
    disp(['Row 2 = ' num2str(rowTotals(2)) ' is not bigger than row 4 = ' num2str(rowTotals(4))]);
end


% Helper function
function i = loop(i)
    while i < 50
        if i < 4
            i = i + 1;
        elseif i < 31
            disp(['i = ' num2str(i) ' which is less then or equal to 30, adding 5']);
            i = i + 5;
        else
            disp(['i = ' num2str(i) ' which is more than 30, adding 3']);
            i = i + 3;
        end
    end
end