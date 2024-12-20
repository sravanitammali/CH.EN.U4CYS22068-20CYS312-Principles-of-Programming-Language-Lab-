listZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
listZipWith _ [] _ = []  
listZipWith _ _ [] = []  
listZipWith f (x:xs) (y:ys) = f x y : listZipWith f xs ys  

readListFromInput :: Read a => IO [a]
readListFromInput = do
    input <- getLine
    let list = map read (words input)  
    return list


main :: IO ()
main = do
    putStrLn "Enter the first list of numbers (space-separated):"
    list1 <- readListFromInput
    putStrLn "Enter the second list of numbers (space-separated):"
    list2 <- readListFromInput
    
    let result = listZipWith (+) list1 list2
    putStrLn ("Resulting list: " ++ show result)
