module Main where

import Test.HUnit
--TODO: work out how to import from Fizzbuzz

fizz x = x `mod` 3 == 0

-- TODO:
derp_1 = test [ "a silly test" ~: 'a' ~=? 'a',
    "fizz 1 test" ~: fizz 1 ~=? False,
    "fizz 2 test" ~: fizz 2 ~=? False,
    "fizz 3 test" ~: fizz 3 ~=? True ]
tests = TestList [derp_1]

main::IO()
main = (runTestTT tests) >>= (\x -> putStrLn $ show x)
