likes :: [String] -> String
likes xs
    | len == 1 = (xs !! 0) ++ " likes this"
    | len == 2 = (xs !! 0) ++ " and " ++ (xs !! 1) ++ " like this"
    | len == 3 = (xs !! 0) ++ ", " ++ (xs !! 1) ++ " and " ++ (xs !! 2) ++ " like this"
    | len > 3 = (xs !! 0) ++ ", " ++ (xs !! 1) ++ " and " ++ (show (len - 2)) ++ " others like this"
    where len = length xs
likes [] = "no one likes this"

main = do
    print $ likes []
    print $ likes ["Peter"]
    print $ likes ["Jacob", "Alex"]
    print $ likes ["Max", "John", "Mark"]
    print $ likes ["Alex", "Jacob", "Mark", "Max"]
    print $ likes ["Bob", "Max", "Mark", "Jacob", "Alex"]