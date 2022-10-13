multiply :: Int -> Int -> Int
multiply p q
    = p * q

productOf :: [ Int ] -> Int
productOf xs
    = foldr multiply 1 xs

-- main:: IO ()
-- main = putStrLn( show( productOf [1,2,3,4,5]))


ones :: [Int]
ones = 1 : ones

main :: IO ()
main = putStrLn( show( take 10000000 ones))

