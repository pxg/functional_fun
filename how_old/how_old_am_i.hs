{-#LANGUAGE ScopedTypeVariables#-}
how_old n True = 2016 - n - 1
how_old n False = 2016 - n

after_today ['y'] = True
after_today n = False


main = do
    putStrLn "What year were you born in?"
    year_input <- getLine
    -- TODO: Add validation here.
    -- Casting technique from http://stackoverflow.com/questions/11481306/haskell-how-to-parse-an-io-input-string-into-a-float-or-int-or-whatever
    let year_of_birth = read year_input :: Int

    putStrLn "Where you born after May 22nd? Answer 'y' for yes"
    date_input <- getLine
    let date = after_today(date_input)

    print (how_old year_of_birth date)
