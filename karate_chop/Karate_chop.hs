module Karate_chop where


chop :: Int -> [Int] -> Int
chop n [] = -1
chop n [x] = if x == n then 0 else -1
chop n my_list
    | n == middle_item = middle_index
    | n < middle_item =
        if (chop n left_list) == -1 -- TODO: variable here?
        then -1
        else middle_index - (length(left_list) - chop n left_list)
    | n > middle_item =
        if (chop n right_list) == -1
        then -1
        else middle_index + chop n right_list + 1
    where middle_index = length(my_list) `div` 2
          middle_item = my_list !! middle_index
          left_list = take middle_index my_list
          right_list = drop (middle_index + 1) my_list
