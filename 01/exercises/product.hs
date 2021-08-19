-- Usage:
-- myProduct[2,3,4]     => 24

myProduct []      = 1
myProduct (x:xs)  = x * myProduct xs