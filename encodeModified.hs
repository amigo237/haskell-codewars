data ListItem a = Single a | Multiple Int a deriving (Show)

pack :: (Eq a) => [a] -> [[a]]
pack (x:xs) = let (first, rest) = span (== x) xs in (x:first):(pack rest)
pack [] = []

encodeModified :: (Eq a) => [a] -> [ListItem a]
encodeModified xs = map (\x -> let first = (head x); len = (length x) in if len == 1 then Single first else Multiple len first) (pack xs)

main = do
    print $ encodeModified "aaaabccaadeeee"