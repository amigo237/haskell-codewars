compress :: (Eq a) => [a] -> [a]
compress xs = foldr (\a b -> if a == (head b) then b else a:b) [last xs] xs

main = do
    print $ compress "aaaabccaadeeee"
    print $ compress "11112331145555"
    print $ compress [1, 1, 1, 1, 2, 3, 3, 1, 1, 4, 5, 5, 5, 5]