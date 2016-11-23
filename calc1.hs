import Data.Char

data Token = TokenNumber Int
  deriving(Show, Eq)

isSomeDigit :: Char -> Bool
isSomeDigit c = elem c "0123456789"

tokenize :: String -> [Token]
tokenize [] = []
tokenize (x : xs)
    | isSomeDigit x = TokenNumber (digitToInt x) : tokenize xs
    | otherwise = error $ "Cannot tokenize " ++ [x]
