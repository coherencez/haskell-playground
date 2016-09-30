--fizzbuzz :: Int => String
--fizzbuzz x
--  | (mod x 15) == 0 = "FizzBuzz"
--  | (mod x 3) == 0 = "Fizz"
--  | (mod x 5) == 0 = "Buzz"
--  | otherwise = show x

--main :: IO()
--main = mapM_ putStrLn (map fizzbuzz [1..10000])

-- Sure my form is really bad on this. My Haskell is really rusty.

-- List comprehension
result = [wordOrNum (fizzbuzz x, x) | x <- [1..100]]
  where
    -- Choose between substituted term and original number shown as a string
    wordOrNum ("", num) = show num
    wordOrNum (word, _) = word

    -- Function for a single term
    fizzbuzz num = (fizz num) ++ (buzz num)
    
    -- Specialize substitution functions
    fizz num = subs num 3 "Fizz"
    buzz num = subs num 5 "Buzz"

    -- A generalized function to substitute a term based on divisibility
    subs num factor term =
      if num `mod` factor == 0
      then term
      else ""