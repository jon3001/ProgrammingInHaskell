-- Modify the original qsort but replace <= with < in 'smaller = [a | a <- xs, a < x]'
-- sorts and produces only the distinct values
-- Usage:
-- qsort2 [2,2,3,1,1]     => [1,2,3]

qsort2 []        =   []
qsort2 (x:xs)    =   qsort2 smaller ++ [x] ++ qsort2 larger
                    where
                        smaller = [a | a <- xs, a < x]
                        larger  = [b | b <- xs, b > x]