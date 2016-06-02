dupli :: [a] -> Int -> [a]
dupli = flip $ concatMap . replicate

main = do
    print $ dupli [1, 2, 3] 2