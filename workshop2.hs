memberSet :: Int -> [Int] -> Bool
memberSet x [] = False
memberSet x (y:ys)
 | x == y = True
 | otherwise = memberSet x ys

unionSet :: [Int] -> [Int] -> [Int]
unionSet [] us = us
unionSet (t:ts) us
 | memberSet t us = unionSet ts us
 | otherwise = t : unionSet ts us

intersectSet :: [Int] -> [Int] -> [Int]
intersectSet [] is = []
intersectSet (t:ts) is
 | memberSet t is = t : intersectSet ts is
 | otherwise = intersectSet ts is

takeList :: Int -> [Int] -> [Int]
takeList 0 xs = []
takeList e [] = []
takeList e (x:xs) = x : takeList (e-1) xs

dropList :: Int -> [Int] -> [Int]
dropList 0 xs = xs
dropList e [] = []
dropList e (x:xs) = dropList (e-1) xs

split :: Int -> [Int] -> ([Int], [Int])
split 0 xs = ([], xs)
split n (x:xs)
 = (x:as, bs)
 where (as,bs) = split (n-1) xs

main :: IO ()
main = putStrLn( show ( split 3 [2,3,4,5,6]))