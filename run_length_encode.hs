pack :: (Eq a) => [a] -> [[a]]
pack (x:xs) = let (first, rest) = span (== x) xs in (x:first):(pack rest)
pack [] = []

encode :: (Eq a) => [a] -> [(Int, a)]
encode xs = map (\x -> (length x, head x)) (pack xs)

main = do
    print $ encode "aaaabccaadeeee"