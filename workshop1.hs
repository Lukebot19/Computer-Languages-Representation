len :: [ Int ] -> Int
len [] = 0
len (x:xs) = 1 + len xs

-- main :: IO ()
-- main = putStrLn (show(len [1,2,3,4]))

-- contains :: [String] -> String -> Bool
-- contains [] e = False 
-- cotains (x:xs) e = if e == x then True else contains xs e

contains :: [String] -> String -> Bool
contains [] e = False 
contains (x:xs) e
 | e == x = True
 | otherwise = contains xs e

-- main :: IO ()
-- main = putStrLn (show (contains [ "TO", "BE", "OR", "NOT", "TO", "BE" ] "NOT"))

set :: [String] -> Bool
set [] = True
set (x:xs)
 | contains xs x = False
 | otherwise = set xs

-- main :: IO ()
-- main = putStrLn (show (set [ "TO", "BE", "OR", "NOT" ]))


largest :: [Int] -> Int
largest [x] = x
largest (x:xs)
 | x > largest xs = x
 | otherwise = largest xs

-- main :: IO ()
-- main = putStrLn( show (largest [3,8,1,3,2]))

-- zipped :: ([a],[b]) -> [(a),(b)]
-- zipped ([], []) = []
-- zipped (x:xs, y:ys) = (x,y): zipped (xs,ys)


insert :: Int -> [Int] -> [Int]
insert x [] = [x]
insert x (y:ys)
 | x<=y = x : y : ys
 | otherwise = y:insert x ys

sort :: [Int] -> [Int]
sort [] = []
sort (x:xs) = insert x (sort xs)
 
main :: IO ()
main = putStrLn( show (sort [1,4,2,3]))