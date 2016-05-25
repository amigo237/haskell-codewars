combinations :: Int -> [a] -> [[a]]
combinations 0 _ = [[]]
combinations n xs = [xs !! i : x | i <- [0..(length xs) - 1], x <- combinations (n - 1) (drop (i + 1) xs)]

main = do
    print $ combinations 0 [1..5]
    print $ combinations 1 [1..5]
    print $ combinations 2 [1..5]
    print $ combinations 3 [1..5]
    print $ combinations 4 [1..5]
    print $ combinations 5 [1..5]
