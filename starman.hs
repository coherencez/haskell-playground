-- The heart of the game involves checking
-- the player’s guess. We want to know whether
-- the guess was right. This outcome is a Bool
-- value, either True or False. We need to update
-- the displayed word, if the guess was right, by
-- replacing appropriate dashes in the displayed word
-- with the correctly guessed character. Therefore the
-- result type of the function is a pair (Bool, String).
-- The first element of the pair is the guess outcome. The
-- second element is the String to display to the user
-- for the next round.
--
-- Now, the checking function needs to know:
--
-- The secret word, a String
-- The current display, also a String
-- The character guessed by the player
check :: String -> String -> Char -> (Bool,String)
check word display c
  = (c `elem` word, [(if x==c
          then c
          else y) | (x,y) <- zip word display])

turn :: String -> String -> Int -> IO()
turn word display n =
  do if n==0
      then putStrLn "You lose"
      else if word==display
            then putStrLn "You win!"
            else mkguess word display n

mkguess :: String -> String -> Int -> IO()
mkguess word display n
  = do putStrLn (display ++ " " ++ take n (repeat '*'))
       putStr " Enter your guess:"
       q <- getLine
       let (correct, display') = check word display (q!!0)
       let n' = if correct then n else n-1
       turn word display' n'

-- top level function
starman :: String -> Int -> IO()
starman word n = turn word ['-' | x <- word] n
