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
    print(fizzbuzz_display 1)
    print(fizzbuzz_display 2)
    print(fizzbuzz_display 3)
    print(fizzbuzz_display 4)
    print(fizzbuzz_display 5)
    print(fizzbuzz_display 6)
    print(fizzbuzz_display 15)
