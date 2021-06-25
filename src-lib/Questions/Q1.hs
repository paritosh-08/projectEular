-- Module for question 1
{- If we list all the natural numbers below 10 that are multiples of 3 or 5,
we get 3, 5, 6 and 9. The sum of these multiples is 23. Find the sum of all
the multiples of 3 or 5 below 1000. -}

module Questions.Q1 where

solve:: Int -> Int -> Int -> Int -> Int
solve fac1 fac2 from to =
    sum multiples
    where
        multiples = [x | x <- [from..(to-1)], x `mod` fac1 == 0 || x `mod` fac2 == 0]

question:: String
question = "If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23. Find the sum of all the multiples of 3 or 5 below 1000."
