averageMarks :: [Int] -> Double
averageMarks [] = 0 
averageMarks marks = fromIntegral (sum marks) / fromIntegral (length marks)  

readStudentRecords :: IO [(String, Int, [Int])]
readStudentRecords = do
    
    putStrLn "Enter the number of students:"
    numStudents <- readLn  
    readRecords numStudents []
readRecords :: Int -> [(String, Int, [Int])] -> IO [(String, Int, [Int])]
readRecords 0 records = return records  
readRecords n records = do
   
    putStrLn "Enter student's name:"
    name <- getLine  
    
    putStrLn "Enter student's roll number:"
    rollNumber <- readLn  
    
    putStrLn "Enter the marks (space-separated):"
    marksInput <- getLine  
    let marks = map read (words marksInput)  
    
    readRecords (n - 1) ((name, rollNumber, marks) : records)
main :: IO ()
main = do
    studentRecords <- readStudentRecords
    
    putStrLn "\nStudent Averages:"
    mapM_ displayStudentAverage studentRecords

displayStudentAverage :: (String, Int, [Int]) -> IO ()
displayStudentAverage (name, _, marks) = do
    let avg = averageMarks marks
    putStrLn (name ++ ": " ++ show avg)
