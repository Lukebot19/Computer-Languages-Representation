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

-- main :: IO ()
-- main = putStrLn( show( take 10000000 ones))


-- producer :: [Int]
-- producer = [2..]

-- consumer :: [Int] -> [Int]
-- consumer (p : xs) = p : consumer rest
--      where
--      rest = filter (\x -> x `mod` p /= 0) xs

primes :: [Int]
primes = consumer producer

-- main :: IO ()
-- main = putStrLn( show( take 20 primes))

producer :: [Int]
producer = [1..]

consumer :: [Int] -> [Int]
consumer = filter isPerfect

isPerfect :: Int -> Bool
isPerfect n 
    = n == sum facts
    where 
        facts = filter (\i -> n `mod` i == 0) [1..n-1]

perfects :: [Int]
perfects = consumer producer


-- main :: IO ()
-- main = putStrLn( show ( take 5 perfects ))

-- Write and read a text file
test :: String -> String -> IO String
test fn s = writeFile fn s >> readFile fn

-- main :: IO ()
-- main = test "a.txt" "a" >>= putStrLn


-- It broke
-- test1 :: String -> String -> IO String
-- test1 fn s 
--     = do writeFile fn s 
--     readFile fn

-- main :: IO ()
-- main 
--     = do s <- test1 "a.txt" "a" 
--     putStrLn s

-- Lambda functions
lambda :: Int -> Int -> Int
lambda = \x y -> x + y

-- main :: IO ()
-- main = putStrLn( show ( lambda 42 1))

lambda2 :: Int -> Bool
lambda2 = \x -> x > 7

test2 :: [Int]
test2 = filter lambda2 [1..9]

main:: IO ()
main = putStrLn ( show test2)


