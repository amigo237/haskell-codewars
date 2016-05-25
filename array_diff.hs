difference :: Eq a => [a] -> [a] -> [a]
difference a b = [x | x <- a, x `notElem` b]

main = print $ difference [1, 2, 3] [2]