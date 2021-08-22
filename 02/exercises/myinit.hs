-- The library function init removes the last element from a non-empty list; 
-- for example, init [1,2,3,4,5] = [1,2,3,4]. 
-- Show how init could similarly be defined in two different ways.

myinit01 xs = take (length xs - 1) xs
myinit02 xs = reverse (tail (reverse xs))