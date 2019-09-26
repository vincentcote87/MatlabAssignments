%Question 2
disp("Question 2");
arr = ones(5,4) * 5;
disp(arr);

%Question 3
disp("Question 3");
arr(:,2) = 3;
disp(arr);

%Question 4
disp("Question 4");
arr(:,4) = 4:4:20;
disp(arr);

%Question 5
disp("Question 5");
indices = find(arr>5);
disp(indices);

%Question 6
disp("Question 6 - See figure");
x = 0:0.1:10 * pi;
figure;
subplot(3,1,1); % using subplot as 3 questions require different figures
plot(x, cos(x));
xlabel('Plot of cosine');

%Question 7
disp('Question 7 - See figure');
text((5 * pi), 0, 'it is cosine', 'color', 'blue', 'FontSize', 11, 'HorizontalAlignment', 'center');

%Question 8
disp('Question 8 - See figure');
subplot(3,1,2); % using subplot as 3 questions require different figures
histogram(cos(x), 18);
xlabel('Histogram of cosine');

%Question 9
disp('Question 9 - See figure');
subplot(3,1,3); % using subplot as 3 questions require different figures
histogram(arr, 1:20);
xlabel('Histogram of arr');

%Question 10
disp('Question 10');
[m,n] = size(arr);
for i = 1:m*n
    if arr(i) > 5
        str = ['At index ' num2str(i) ', ' num2str(arr(i)) ' is greater than 5'];
        disp(str);
    end
end
