myLast :: [a] -> a
myLast [] = error "No end for empty lists!"
myLast [x] = x
myLast (_:xs) = myLast xs

main = do
    print $ myLast ['x','y','z']
    print $ myLast [1, 2, 3]
