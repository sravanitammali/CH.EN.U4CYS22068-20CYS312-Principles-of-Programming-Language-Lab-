filterEven :: [Int] -> [Int]
filterEven xs = filter odd xs

main :: IO ()
main = do
    putStrLn "Enter a list of integers (space-separated):"
    input <- getLine
    let numbers = map read (words input) :: [Int]
    let result = filterEven numbers
    putStrLn ("Filtered list (no even numbers): " ++ show result)
