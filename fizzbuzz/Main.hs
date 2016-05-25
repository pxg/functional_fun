import Fizzbuzz


main = do
    let xs = [fizzbuzz_display x | x <- [1..100]]
    -- print one item per line http://stackoverflow.com/questions/5289779/printing-elements-of-a-list-on-new-lines
    putStr(unlines xs)
-- cleaner to read than my if else stuff https://wiki.haskell.org/Fizzbuzz
-- nice solution https://wiki.haskell.org/Haskell_Quiz/FizzBuzz/Solution_Acontorer
