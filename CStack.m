classdef CStack < handle
% CStack define a stack data strcuture
% 
% It likes java.util.Stack, however, it could use CStack.content() to
% return all the data (in cells) of the Stack, and it is a litter faster
% than java's Stack.
% 
%   s = CStack(c);  c is a cells, and could be omitted
%   s.size() return the numble of element
%   s.isempty() return true when the stack is empty
%   s.empty() delete the content of the stack
%   s.push(el) push el to the top of stack
%   s.pop() pop out the top of the stack, and return the element
%   s.top() return the top element of the stack
%   s.remove() remove all the elements in the stack
%   s.content() return all the data of the stack (in the form of a
%   cells with size [s.size(), 1]
%   
% See also CList, CQueue
% 
% Ò»Õ»
% s = CStack; Ò»ÕµÕ»
% s = CStack(c); Õ»ó£¬²cÊ¼scÎªcellÊ±cÔªÎªÐµÝ£
%    cÎªÐµÄµÒ»
%
% Ö§Ö²
%     sz = s.size() Õ»ÔªØ¸Ò²Ð¶Õ»Ç·Ç¿Õ¡
%     s.isempty() Ð¶Õ»Ç·Îª
%     s.empty() Õ»
%     s.push(el) ÔªelÑ¹Õ»
%     s.pop()  Õ»ÔªØ£Ã»Ô¼È·Õ»Ç¿
%     el = s.top() Õ»ÔªØ£Ã»Ô¼È·Õ»Ç¿
%     s.remove() Õ»
%     s.content() Ë³ò·µ»sÝ£ÎªÒ»cell
%
% See also CList, CQueue
%
% Copyright: zhang@zhiqiang.org, 2010.
% url: http://zhiqiang.org/blog/it/matlab-data-structures.html

    properties (Access = private)
        buffer      % Ò»cellé£¬Õ»
        cur         % Ç°ÔªÎ», or the length of the stack
        capacity    % Õ»Ê±Îª2
    end
    
    methods
        function obj = CStack(c)
            if nargin >= 1 && iscell(c)
                obj.buffer = c(:);
                obj.cur = numel(c);
                obj.capacity = obj.cur;
            elseif nargin >= 1
                obj.buffer = cell(100, 1);
                obj.cur = 1;
                obj.capacity =100;
                obj.buffer{1} = c;
            else
                obj.buffer = cell(100, 1);
                obj.capacity = 100;
                obj.cur = 0;
            end
        end
        
        function s = size(obj)
            s = obj.cur;
        end
        
        function remove(obj)
            obj.cur = 0;
        end
        
        function b = empty(obj)
            b = obj.cur;
            obj.cur = 0;
        end
        
        function b = isempty(obj)            
            b = ~logical(obj.cur);
        end

        function push(obj, el)
            if obj.cur >= obj.capacity
                obj.buffer(obj.capacity+1:2*obj.capacity) = cell(obj.capacity, 1);
                obj.capacity = 2*obj.capacity;
            end
            obj.cur = obj.cur + 1;
            obj.buffer{obj.cur} = el;
        end
        
        function el = top(obj)
            if obj.cur == 0
                el = [];
                warning('CStack:No_Data', 'trying to get top element of an emtpy stack');
            else
                el = obj.buffer{obj.cur};
            end
        end
        
        function el = pop(obj)
            if obj.cur == 0
                el = [];
                warning('CStack:No_Data', 'trying to pop element of an emtpy stack');
            else
                el = obj.buffer{obj.cur};
                obj.cur = obj.cur - 1;
            end        
        end
        
        function display(obj)
            if obj.cur
                for i = 1:obj.cur
                    disp([num2str(i) '-th element of the stack:']);
                    disp(obj.buffer{i});
                end
            else
                disp('The stack is empty');
            end
        end
        
        function c = content(obj)
            c = obj.buffer(1:obj.cur);
        end
    end
end