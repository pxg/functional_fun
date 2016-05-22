import Data.Time.Clock
import Data.Time.Calendar

date :: IO (Integer,Int,Int) -- :: (year,month,day)
date = getCurrentTime >>= return . toGregorian . utctDay

main = do
    (year, month, day) <- date
    putStrLn ("Todays date is " ++ show day ++ "/" ++ show month ++ "/" ++ show year)
