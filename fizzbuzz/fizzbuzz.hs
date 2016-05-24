fizz x = x `mod` 3 == 0
buzz x = x `mod` 5 == 0
fizzbuzz x = if (fizz x && buzz x)
    then "FizzBuzz"
    else if (fizz x)
        then "Fizz"
        else if (buzz x)
            then "Buzz"
            else show x
fizzbuzz_display x = "fizzbuzz " ++ show x ++ " " ++ fizzbuzz x

main = do
    let xs = [fizzbuzz_display x | x <- [1..100]]
    -- print one item per line http://stackoverflow.com/questions/5289779/printing-elements-of-a-list-on-new-lines
    putStr(unlines xs)
-- cleaner to read than my if else stuff https://wiki.haskell.org/Fizzbuzz
-- nice solution https://wiki.haskell.org/Haskell_Quiz/FizzBuzz/Solution_Acontorer
