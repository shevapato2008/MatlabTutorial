%% 3. Data Types

% Numeric Type
x = 5
class(x)
whos x
class(x)
y = single(5)
class(y)
whos x
whos y
realmin('single')
realmax('double')
z = uint64(5)
whos z


% Inf, NaN and Other Constants
1/0
inf
isinf(ans)
whos inf
inf
whos ans

0/0
inf/inf
isnan(ans)
pi
whos pi
pi
whos ans
format rat
pi
format longg
i
j
sqrt(-5:5)
i
whos ans


% Numeric Output Formats
10^10
format longg
ans
format bank
pi
format hex
123
format rat
2*3/7+1/12
pi/2
format


% Character Strings
s = 'hello'
'let''s go'
whos s
s(1)
whos ans
a = 'hello'
b = 'world'
[a ', ' b '!']                          % string concatenation
age = 30
['I am ' num2str(age) ' years old']     % convert numeric to string
disp(ans)
dsolve('Dq = q*r', 'q(0) = q0', 't')    % pass to toolbox as string for evaluation
strcmpi('ABC', 'abc')                   % compare two strings (case insensitive)


% Structures
person.name = 'john'
person.age = 22
person.age
person.name
whos person
address.housename = 123
address.streetname = 'london road'
person.address = address


% Cell Arrays
x = 42
whos x
x(2) = 24
whos x
address = {123, 'london road'}
person = {'john', 22, address}
whos person
person(1)
whos ans
person{1}
whos ans


% Function Handles
s = @sin
s(pi / 2)

sumOver3 = @(x, y) (x + y) / 3
sumOver3(1, 2)

incApply = @(x, y, f) f(x + 1, y + 1)
incApply(2, 3, sumOver3)


