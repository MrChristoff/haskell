doubleMe x = x + x

squareMe x = x * x

-- doubleUs foo bar = foo*2 +bar*2
doubleUs foo bar = doubleMe foo + doubleMe bar

doubleSmallNumber x = if x > 50
                        then x
                        else x*2

oneLineIfElse x = if x > 10 then x else x * 3

lottoNumbers = [4,8,15,16,23,42]

a = ['f','o','o']
b = ['b','a','r']

longIsh = [1..1000]

insertedNumber = 10:[1,2,3,4]

dividedBySeven = [ x | x <- [1..30], x `mod` 7 == 0]
dividedBySevenUptoY y z = [ x | x <- [1..y], x `mod` z == 0]

-- testSeven = [ x | x <- [1..30], x `mod` 7 == 0]
findTheMultiplesOfZUpToY z y = [ x | x <- [1..y], x `mod` z == 0 ]
storeMe = ("1", "number")
listOfTuples = [("1", "number"), ("2", "number"), ("+", "operator")]

times4 :: Int -> Int
times4 x = x * 4

multBy4 :: [Int] -> [Int]
-- multBy4 [] = []
multBy4 (x:xs) = times4 x : multBy4 xs
