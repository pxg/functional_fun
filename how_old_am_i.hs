{-#LANGUAGE ScopedTypeVariables#-}
-- Gives 33 for input of 1983 which is incorrect
how_old n = 2016 - n


main = do
    putStrLn "What year were you born in?"
    user_input <- getLine
    -- TODO: Add validation here.
    -- Casting technique from http://stackoverflow.com/questions/11481306/haskell-how-to-parse-an-io-input-string-into-a-float-or-int-or-whatever
    let year_of_birth = read user_input :: Int
    print (how_old year_of_birth)
