module Fizzbuzz where

fizz :: Integral a => a -> Bool
fizz x = x `mod` 3 == 0

buzz :: Integral a => a -> Bool
buzz x = x `mod` 5 == 0

fizzbuzz :: (Integral a, Show a) => a -> [Char]
fizzbuzz x = if (fizz x && buzz x)
    then "FizzBuzz"
    else if (fizz x)
        then "Fizz"
        else if (buzz x)
            then "Buzz"
            else show x

fizzbuzz_display :: (Integral a, Show a) => a -> [Char]
fizzbuzz_display x = "fizzbuzz " ++ show x ++ " " ++ fizzbuzz x
