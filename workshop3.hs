-- appList Normal version
appList :: [Int] -> [Int] -> [Int]
appList [] ys = ys
appList (x:xs) ys = x: appList xs ys

-- appList Polymorphic type version
appList1 :: [a] -> [a] -> [a]
appList1 [] ys = ys
appList1 (x:xs) ys = x: appList1 xs ys

-- appList with FoldR 
appList2 :: [a] -> [a] -> [a]
appList2 xs ys = foldr(:) ys xs 

-- concatList 
concatList :: [[Int]] -> [Int]
concatList [] = []
concatList (xs:xss) = appList xs (concatList xss)

-- concatList with polymorphic type
concatList2 :: [[a]] -> [a]
concatList2 [] = []
concatList2 (xs:xss) = appList2 xs (concatList2 xss)

-- concatList with FoldR
concatList3 :: [[Int]] -> [Int]
concatList3 xss = foldr (++) [] xss

--triangles
triangle :: Int -> Int
triangle i = (i * (i +1) `div` 2)

triangles :: [Int]
triangles = map triangle [1..]

-- Triangles with list comprehension
triangles1 :: [Int]
triangles1 = [triangle x | x <- [1..]]

main :: IO ()
main = putStrLn( show (take 20 triangles1))

