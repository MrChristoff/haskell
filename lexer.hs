simpleTokenize string = map makeATuple (filterString string)

filterString string = filter (/=" ") (mapString string)

mapString string = map (:[]) string

makeATuple char = (char, "number")
