{-#LANGUAGE ScopedTypeVariables#-}
import Data.Time.Clock
import Data.Time.Calendar


how_old current_year year_of_birth True = current_year - year_of_birth - 1
how_old current_year year_of_birth False = current_year - year_of_birth

after_today ['y'] = True
after_today n = False

date :: IO (Integer,Int,Int) -- :: (year,month,day)
date = getCurrentTime >>= return . toGregorian . utctDay


main = do
    putStrLn "What year were you born in?"
    year_input <- getLine
    -- TODO: Add validation here.
    -- Casting technique from http://stackoverflow.com/questions/11481306/haskell-how-to-parse-an-io-input-string-into-a-float-or-int-or-whatever
    let year_of_birth = read year_input :: Int

    -- should be dynamic
    putStrLn "Where you born after May 22nd? Answer 'y' for yes"
    date_input <- getLine
    let dob_after_today = after_today date_input

    (year, month, day) <- date
    let current_year = fromIntegral year -- year is an Int not an Integer

    print (how_old current_year year_of_birth dob_after_today)
