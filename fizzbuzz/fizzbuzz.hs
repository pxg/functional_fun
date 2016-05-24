fizzbuzz x = if (x `mod` 3 == 0) then "Fizz" else show x


main = do
    print(fizzbuzz 1)
