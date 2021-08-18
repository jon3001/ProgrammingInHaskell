-- use in ghci. 
-- Was 'sum' in the book but seems to clobber some library reference.
-- Therefore using 'mySum'
--
-- Usage:
-- mySum[]
-- mySum[1..10]
-- mySum[1,2,3]

mySum []     = 0
mySum(n:ns)  = n + mySum ns
