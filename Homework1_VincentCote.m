% Question 1
disp('Question 1');
disp('Running clear command');
clear;

% Question 2
disp('Question 2');
disp(floor(rand(1,15)*100));

% Question 3
disp('Question 3');
disp([3:4:63]);

% Question 4
disp('Question 4');
Arr = floor(rand(2,4)*100);
disp(Arr);

% Question 5
disp('Question 5');
Arr(2,3) = Arr(2,3) + 5;
disp(Arr);

% Question 6
disp('Question 6');
Arr2 = Arr';
disp(Arr2);

% Question 7
disp('Question 7');
disp(Arr' + Arr2);

% Question 8
disp('Question 8');
disp(Arr + Arr2');

% Question 9
disp('Question 9');
Arr3 = ones(2,4) * 3;
disp(Arr3);

% Question 10
disp('Question 10');
disp(Arr .* Arr3);