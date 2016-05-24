module Main where

import Test.HUnit
--TODO: work out how to import from Fizzbuzz

fizz x = x `mod` 3 == 0

--
derp_1 = test [ "a silly test" ~: 'a' ~=? 'a' ]
derp_2= test [ "fizz 1 test" ~: fizz 1 ~=? False ]
derp_3= test [ "fizz 2 test" ~: fizz 2 ~=? False ]
derp_4= test [ "fizz 3 test" ~: fizz 3 ~=? True ]
tests = TestList [derp_1, derp_2, derp_3, derp_4]

main::IO()
main = (runTestTT tests) >>= (\x -> putStrLn $ show x)
