elementAt :: [a] -> Int -> a
elementAt xs pos = xs !! (pos - 1)

elementAt1 :: [a] -> Int -> a
elementAt1 (x:_) 1 = x
elementAt1 (_:xs) pos = elementAt1 xs (pos - 1)
elementAt1 _ _ = error "Index out of bounds"

main = do
    print $ elementAt [1, 2, 3] 2
    print $ elementAt "haskell" 5
    print $ elementAt1 [1, 2, 3] 2
    print $ elementAt1 "haskell" 5