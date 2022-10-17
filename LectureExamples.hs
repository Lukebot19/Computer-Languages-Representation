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

main :: IO ()
main = putStrLn( show ( take 5 perfects ))