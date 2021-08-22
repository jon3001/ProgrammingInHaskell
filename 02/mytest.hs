double x = x + x
quadruple x = double(double x)
factorial n = product[1..n]
 
-- In general, any function with two arguments can be written between its arguments by enclosing the name of the function in single back quotes
average ns = sum ns `div` length ns  -- average ns = div (sum ns) (length ns) -- was also possible
