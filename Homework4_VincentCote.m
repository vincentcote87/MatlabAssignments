clear;
str = 'I am an International student at the University of Lethbridge';

%Question 1
disp('Question 1');
disp(['There are ' num2str(count(str, 'a')) ' letter a in the string']);
str_no_a = erase(str, 'a');
disp(str_no_a);

%Question 2
disp('Question 2');
shifted_str = [str(6:end) str(1:5)];
disp(shifted_str);

%Question 3
disp('Question 3');
upper_case_letters = sum(isstrprop(str, 'upper'));
disp(['There are ' num2str(upper_case_letters) ' upper case letters in the string']);
disp(lower(str));

%Question 4
disp('Question 4');
disp(reverse(str));

%Question 5
disp('Question 5');
disp(['The string was ' num2str(strlength(str)) ' characters long']);
new_str = replace(str, 'nation', 'province');
disp(new_str);
disp(['The string is now ' num2str(strlength(new_str)) ' characters long']);

clear;
str = 'I am an International student at the University of Lethbridge';

%Question 6
disp('Question 6');
count = 0;
str_no_a = '';
for i = 1:strlength(str)
    if str(i) == 'a'
        count = count + 1;
    else
        str_no_a = [str_no_a str(i)];
    end
end
disp(['There are ' num2str(count) ' letter a in the string']);
disp(str_no_a);

%Question 7
disp('Question 7');
if strlength(str) > 0
    shifted_str = str;
    for i = 1:5
        temp = shifted_str(1);
        shifted_str = [shifted_str(2:end) temp]; 
    end
    disp(shifted_str);
end

%Question 8
disp('Question 8');
no_uppercase_letters = '';
count = 0;
for i = 1:strlength(str)
    if str(i) >= 65 && str(i) <= 90 % A=65 Z=90
        count = count + 1;
        no_uppercase_letters = [no_uppercase_letters char(str(i) + 32)];
    else
        no_uppercase_letters = [no_uppercase_letters str(i)];
    end
end
disp(['There are ' num2str(count) ' upper case letters in the string']);
disp(no_uppercase_letters);

%Question 9
disp('Question 9');
reversed_str = '';
for i = 0:strlength(str)-1
    reversed_str = [reversed_str str(end-i)];
end
disp(reversed_str);

%Question 10
disp('Question 10');
find_str = 'nation';
replace_str = 'province';
index = -1;
old_count = 0;
new_count = 0;
new_str = '';
j = 1;

for i = 1:strlength(str)
    old_count = old_count + 1;
    if str(i) == find_str(j)
        if j >= strlength(find_str) %character string match nation
            index = (i - strlength(find_str)); %save position where 'nation' was found
            j = 1;
        else
            j = j + 1; %characters match but not for the entire word (yet)
        end
    else
        j = 1; %no match, start searching from begining of 'nation' again
    end
end
disp(['The string was ' num2str(old_count) ' characters long']);

if index >= 0 %putting the string back together with word replaced
    for i = 1:index %String before 'nation'
        new_str = [new_str str(i)];
        new_count = new_count + 1;
    end
    for i = 1:strlength(replace_str) %adding in the new word 'province'
        new_str = [new_str replace_str(i)];
        new_count = new_count + 1;
    end
    for i = (index + strlength(find_str) + 1):strlength(str) %adding the remaining string from after 'nation'
        new_str = [new_str str(i)];
        new_count = new_count + 1;
    end
    disp(new_str);
    disp(['The string is now ' num2str(new_count) ' characters long']);
else
    disp([find_str ' was not found']);
end
