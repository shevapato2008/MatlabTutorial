
%% Object Oriented Programming

% (1) Classes
%{
Value class
    - Similar semantics to variables
    - Copying a value class copies all its memory
Handle class
    - Can be shared (i.e. referenced) by more than one object or function
    - Copying simply copies a handle, not the contents
    - Inherits from handle
%}

account.balance = 0     % This only creates a structure.
                        % This will not provide us any method for doing
                        % anything, e.g. withdrawing money.

% Create a class Account: shown in another script.
%{
classdef Account < handle

end
%}
a = Account
whos a


% (2) Properties
% Add properties to original Account class
%{
classdef Account < handle
    properties
        Balance = 0 
    end
end
%}
a = Account
whos a
a.Balance
a.Balance = 100


% (3) Methods
%{
classdef Account < handle
    properties
        Balance = 0 
    end
    methods
        function Deposit(obj, amount)
            obj.Balance = obj.Balance + amount;
        end
        function Withdraw(obj, amount)
            if (amount <= obj.Balance)
                obj.Balance = obj.Balance - amount;
            else
                disp('insufficient funds')
            end
        end
    end
end
%}
a = Account
a.Deposit(100)
a.Balance
a.Withdraw(60)
a.Balance
a.Withdraw(100)

