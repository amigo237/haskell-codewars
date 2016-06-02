pack :: (Eq a) => [a] -> [[a]]
pack xs = foldr (\x acc -> if (head $ head acc) == x then [x:(head acc)] ++ (tail acc) else [[x]] ++ acc) [[last xs]] xs

pack1 (x:xs) = let (first, rest) = span (== x) xs in (x:first):(pack rest)
pack1 [] = []

main = do
    print $ pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']
    print $ pack1 ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']