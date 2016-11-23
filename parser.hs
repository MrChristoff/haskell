import System.IO

numberExtractor lexerList = fst (lexerList !! 0)

numberParser lexerList = read (numberExtractor lexerList) :: Float




simpleTokenize string = map makeATuple (filterString string)

filterString string = filter (/=" ") (mapString string)

mapString string = map (:[]) string

makeATuple char = (char, "number")
