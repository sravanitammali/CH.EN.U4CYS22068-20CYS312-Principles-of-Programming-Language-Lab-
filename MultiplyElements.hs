multiplyElements :: Num a => [a] -> a -> [a]
multiplyElements xs n = [x * n | x <- xs]

main :: IO ()
main = do
    putStrLn "Enter a list of numbers (space-separated):"
    input <- getLine
    let numbers = map read (words input) :: [Int]
    putStrLn "Enter the multiplier:"
    n <- readLn :: IO Int
    let result = multiplyElements numbers n
    putStrLn ("Resulting list: " ++ show result)
