module Main where

import Test.HUnit
import How_old


-- TODO: split the arrays for the tests
tests = TestList [
    test [
        "date_parse 1983-07-06" ~: date_parse "1983-07-06" ~=? (1983, 7, 6),
        "age_from_date birthday been this year" ~: age_from_date(1983, 1, 1) (2016, 5, 29) ~=? 33,
        "age_from_date birthday later this year" ~: age_from_date(1983, 7, 6) (2016, 5, 29) ~=? 32,
        "age_from_date birthday later this year" ~: age_from_date(1983, 5, 29) (2016, 5, 29) ~=? 33,
        "age_from_date birthay been this month" ~: age_from_date(1983, 5, 5) (2016, 5, 29) ~=? 33,
        "age_from_date birthay later this month" ~: age_from_date(1983, 5, 31) (2016, 5, 29) ~=? 32
        ]
    ]

main::IO()
main = (runTestTT tests) >>= (\x -> putStrLn $ show x)
