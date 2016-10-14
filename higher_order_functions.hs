let testList = [1..10]

printResult =
  do
  putStrLn (map (\x -> x*3) testList)

foldl (+) [1..10]
