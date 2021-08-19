rsort []        =   []
rsort (x:xs)    =   rsort larger ++ [x] ++ rsort smaller
                    where
                        smaller = [a | a <- xs, a <= x]
                        larger  = [b | b <- xs, b > x]