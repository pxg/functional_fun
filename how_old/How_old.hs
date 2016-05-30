module How_old where
import Data.List.Split
import Data.Time.Clock  -- needed?
import Data.Time.Calendar  -- needed?


today :: IO (Integer,Int,Int) -- :: (year,month,day)
today = getCurrentTime >>= return . toGregorian . utctDay


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
    | dob_m < today_m = diff_year
    | dob_m == today_m = if (dob_d > today_d) then diff_year - 1 else diff_year
    | dob_m > today_m = diff_year - 1
    where diff_year = today_y - dob_y
