module Main where

import Test.HUnit

derp = test [ "a silly test" ~: 'a' ~=? 'a' ]
-- test2 = test [ "pete's silly test" True True]
tests = TestList [ derp ]

main::IO()
main = (runTestTT tests) >>= (\x -> putStrLn $ show x)
