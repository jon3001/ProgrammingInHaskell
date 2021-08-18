-- use in ghci. 
-- Was 'sum' in the book but seems to clobber some library reference.
-- Therefore using 'mySum'
--
-- Usage:
-- mySum[]
-- mySum[1..10]
-- mySum[1,2,3]

mySum []     = 0            -- 0 is the identity for addition. 
mySum(n:ns)  = n + mySum ns -- n:ns means split the list by: first 'n' and remaining 'ns'. Use recursion.
