module Main where

import Test.HUnit
import Karate_chop


tests = TestList [
    test [
        "chop 1" ~: chop 3 [] ~=? -1,
        "chop 2" ~: chop 3 [1] ~=? -1,
        "chop 3" ~: chop 1 [1] ~=? 0,
        "chop 4" ~: chop 1 [1, 3, 5] ~=? 0,
        "chop 5" ~: chop 3 [1, 3, 5] ~=? 1,
        "chop 6" ~: chop 5 [1, 3, 5] ~=? 2,
        "chop 7" ~: chop 0 [1, 3, 5] ~=? -1,
        "chop 8" ~: chop 2 [1, 3, 5] ~=? -1,
        "chop 9" ~: chop 4 [1, 3, 5] ~=? -1,
        "chop 10" ~: chop 6 [1, 3, 5] ~=? -1,
        "pete chop 1" ~: chop 1 [1, 3] ~=? 0,
        "pete chop 2" ~: chop 3 [1, 3, 5, 7, 9] ~=? 1,
        "pete chop 2.1" ~: chop 3 [1, 3] ~=? 1,
        "chop 11" ~: chop 1 [1, 3, 5, 7] ~=? 0,
        "chop 12" ~: chop 3 [1, 3, 5, 7] ~=? 1,
        "chop 13" ~: chop 5 [1, 3, 5, 7] ~=? 2,
        "chop 14" ~: chop 7 [1, 3, 5, 7] ~=? 3,
        "chop 15" ~: chop 0 [1, 3, 5, 7] ~=? -1,
        "chop 16" ~: chop 2 [1, 3, 5, 7] ~=? -1,
        "chop 17" ~: chop 4 [1, 3, 5, 7] ~=? -1,
        "chop 18" ~: chop 6 [1, 3, 5, 7] ~=? -1,
        "chop 19" ~: chop 8 [1, 3, 5, 7] ~=? -1
        ]
    ]

main::IO()
main = (runTestTT tests) >>= (\x -> putStrLn $ show x)
