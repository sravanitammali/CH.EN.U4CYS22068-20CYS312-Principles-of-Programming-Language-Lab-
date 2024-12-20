swapTuple :: (a, b) -> (b, a)
swapTuple (a, b) = (b, a)
main :: IO ()
main = do
    putStrLn "Enter the first element of the tuple:"
    x <- getLine
    putStrLn "Enter the second element of the tuple:"
    y <- getLine
    
    let a = read x :: Int
    let b = read y :: Int
    let result = swapTuple (a, b)
    putStrLn ("Swapped tuple: " ++ show result)
