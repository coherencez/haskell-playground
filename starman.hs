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
