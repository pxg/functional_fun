fizz x = x `mod` 3 == 0
buzz x = x `mod` 5 == 0
-- TODO: multiline for the if else
fizzbuzz x = if (fizz x) then "Fizz" else if (buzz x) then "Buzz" else show x


main = do
    -- TODO: say what we're printing here (use function)
    print(fizzbuzz 1)
    print(fizzbuzz 2)
    print(fizzbuzz 3)
    print(fizzbuzz 4)
    print(fizzbuzz 5)
    print(fizzbuzz 6)
    print(fizzbuzz 15)
