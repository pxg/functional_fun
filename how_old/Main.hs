import How_old


main = do
    putStrLn "What's your date of birth? Enter in the format YYYY-MM-DD"
    dob_string <- getLine
    let dob = date_parse(dob_string)
    date_today <- today
    print(age_from_date dob date_today)
