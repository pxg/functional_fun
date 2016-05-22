-- Gives 33 for input of 1983 which is incorrect
how_old n = 2016 - n


main = do
    print (how_old 1983)
    --putStrLn "What year were you born in?"
    --year_of_birth <- getLine
    -- Need validation on the string here
    -- print (how_old year_of_birth)
    --age =
    --putStrLn ("You were born in " ++ year_of_birth)
