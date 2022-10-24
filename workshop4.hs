seq :: a -> b -> b
seq x y = y

par :: a -> b -> b
par x y = y

-- Get the max of a list
seqmax :: [Int] -> Int
seqmax [x] = x
seqmax (x:xs)
    | x > seqmax xs = x
    | otherwise = seqmax xs

-- main = putStrLn ( show ( seqmax [8,5,9,2,4,7]))


-- Divide and concore, to find the max of a list
dcmax :: [Int] -> Int
dcmax [x] = x
dcmax xs
    = max dcys dczs
        where 
        mid = length xs `div` 2
        (ys, zs) = splitAt mid xs
        dcys = dcmax ys
        dczs = dcmax zs

-- main :: IO ()
-- main = putStrLn( show ( dcmax [8,5,9,2,4,7]))

-- Sequnetial sort function
seqsort :: [Int] -> [Int]
seqsort [] = []
seqsort (x:xs) = insert x (seqsort xs)

insert :: Int -> [Int] -> [Int]
insert e [] = [e]
insert e (x:xs)
    | e < x = e : x : xs
    | otherwise = x : insert e xs

-- main :: IO ()
-- main = putStrLn ( show ( seqsort [8,5,9,2,4,7]))

-- Quick sort function
part ::(Int -> Bool) -> [Int] -> ([Int], [Int])
part p [] = ([], [])
part p (x:xs)
    | p x = (x:as, bs)
    | otherwise = (as, x:bs)
    where 
    (as,bs) = part p xs


qsort :: [Int] -> [Int]
qsort [] = []
qsort (x:xs) = par qbs qas ++ [x] ++ qbs
    where
    qas = qsort as
    qbs = qsort bs
    (as,bs) = part (< x) xs

main :: IO ()
main = putStrLn( show ( qsort [8,5,9,2,4,2,3,6,3,1,6,8,24,44,4,5,7,8,2]))