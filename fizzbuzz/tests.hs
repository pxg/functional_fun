module Main where

import Test.HUnit
import Fizzbuzz


derp_1 = test [
    "fizz 0 test" ~: fizz 0 ~=? True,
    "fizz 1 test" ~: fizz 1 ~=? False,
    "fizz 2 test" ~: fizz 2 ~=? False,
    "fizz 3 test" ~: fizz 3 ~=? True,
    "fizz 4 test" ~: fizz 4 ~=? False,

    "buzz 0 test" ~: buzz 0 ~=? True,
    "buzz 1 test" ~: buzz 1 ~=? False,
    "buzz 2 test" ~: buzz 2 ~=? False,
    "buzz 3 test" ~: buzz 3 ~=? False,
    "buzz 4 test" ~: buzz 4 ~=? False,
    "buzz 5 test" ~: buzz 5 ~=? True,
    "buzz 6 test" ~: buzz 6 ~=? False,

    "fizzbuzz 0 test" ~: fizzbuzz 0 ~=? "FizzBuzz",
    "fizzbuzz 1 test" ~: fizzbuzz 1 ~=? "1",
    "fizzbuzz 2 test" ~: fizzbuzz 2 ~=? "2",
    "fizzbuzz 3 test" ~: fizzbuzz 3 ~=? "Fizz",
    "fizzbuzz 5 test" ~: fizzbuzz 5 ~=? "Buzz",
    "fizzbuzz 15 test" ~: fizzbuzz 15 ~=? "FizzBuzz"
    ]
tests = TestList [derp_1]

main::IO()
main = (runTestTT tests) >>= (\x -> putStrLn $ show x)
