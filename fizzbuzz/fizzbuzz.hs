fizz x = x `mod` 3 == 0
buzz x = x `mod` 5 == 0
fizzbuzz x = if (fizz x && buzz x)
    then "FizzBuzz"
    else if (fizz x)
        then "Fizz"
        else if (buzz x)
            then "Buzz"
            else show x
fizzbuzz_display x = "fizzbuzz " ++ show x ++ " " ++ fizzbuzz x ++ "\n"

main = do
    let xs = [fizzbuzz_display x | x <- [1..100]]
    print xs
