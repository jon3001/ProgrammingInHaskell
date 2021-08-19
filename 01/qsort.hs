-- *** Syntax
-- []   - square brackets represents lists of things
--      [] - empty list
--      [1] [2] [3] - lists with one thing (singleton lists)
--      [1,2,3,4]
-- ++   - list concatenation operator e.g. [1,2,3] ++ [4,5] is [1,2,3,4,5] 
-- :    - colon operator - join a  single value to another list e.g. 1 : [2,3,4] is [1,2,3,4] 
-- where - introduces local definitions i.e. lists 'smaller' and 'larger'
-- [a | a <- xs, a <= x] has parallels with set theory (discrete mathematics) 
-- i.e.: {a | a ∈ S 'and' a <= x }      'and' looked like a small 'n' in the YouTube video https://youtu.be/rIprO6zoujM
--          {} - sets of things (squigly brackets)
--          {a - build a set of all values 'a' ...
--          |  - such that ...
--          a ∈ S - 'a' is an element of the set 'S'
--          a <= x } - and 'a' is less than or equal to 'x'
-- [a | a <- xs, a <= x] 
--          [a          - build a list of all values 'a'
--          | a <- xs   - such that 'a' is drawn from the list 'xs' (selecting elements from a list one-at-a-time)
--          , a <= x]   - and 'a' is less than or equal to 'x'
--
-- *** Signature
-- :type qsort - will output "qsort :: Ord a => [a] -> [a]"
--              [a] -> [a]  ... inputs are a list things 'a'; outputs are a list things 'a'
--              Ord a =>    ... provided that 'a' supports the constraint 'Ord' (Ordering operation)
-- 
-- *** Usage
--          qsort [3,1,2,4]                     => [1,2,3,4]
--          qsort (reverse[1..10])              => [1,2,3,4,5,6,7,8,9,10]
--          qsort "haskell"                     => "aehklls"
--          qsort [True, False, True, False]    => [False,False,True,True]
--

qsort []        =   []
qsort (x:xs)    =   qsort smaller ++ [x] ++ qsort larger
                    where
                        smaller = [a | a <- xs, a <= x]
                        larger  = [b | b <- xs, b > x]