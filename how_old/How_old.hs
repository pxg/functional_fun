module How_old where
import Data.List.Split

-- TODO: get function signature
date_parse x = do
    let dates = splitOn "-" x
    -- TODO: Need to check length of dates here
    let int_dates = [read x :: Int | x <- dates]
    -- Cast to integer so return is the same as Haskell get date
    let year = fromIntegral (int_dates !! 0)
    (year, int_dates !! 1, int_dates !! 2)


-- TODO: get function signature
age_from_date (dob_y, dob_m, dob_d) (today_y, today_m, today_d)
    | dob_m < today_m = today_y - dob_y
    | dob_m == today_m = if (dob_d > today_d) then today_y - dob_y - 1 else (today_y - dob_y)
    | dob_m > today_m = today_y - dob_y - 1
-- TODO: use where for today_y - dob_y "difference_year"

bmiTell :: (RealFloat a) => a -> String
bmiTell bmi
    | bmi <= 18.5 = "You're underweight, you emo, you!"
    | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"
    | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"
    | otherwise   = "You're a whale, congratulations!"
