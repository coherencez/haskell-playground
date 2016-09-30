doubleMe x = x + x
-- these do the same thing --
-- doubleUs x y = x*2 + y*2
doubleUs x y = doubleMe x + doubleMe y

-- else statement REQUIRED
doubleSmallNumber x = if x > 100
                        then x
                        else x * 2

-- ' char not special, but as a naming convention denotes a 'strict' or non-lazy function
-- functions can NOT begin with capital letter
doubleSmallNumber' x = (if x > 100 then x else x*2) + 1


conanO'Brien = "It's a me, Conan O'Brien!!"
