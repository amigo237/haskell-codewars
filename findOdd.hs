import Data.List

findOdd :: (Eq a) => [a] -> a
findOdd xs = head $ foldr (\x acc -> if x `elem` acc then delete x acc else x:acc) [] xs

main = do
    print $ findOdd [1, 1, 1, 2, 2]
    print $ findOdd ['x', 'y', 'y']
    print $ findOdd ['y', 'x', 'y']
    print $ findOdd ['y', 'y', 'x']