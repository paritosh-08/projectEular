-- Module for question 5
{- 2520 is the smallest number that can be divided by each of
the numbers from 1 to 10 without any remainder. What is the
smallest positive number that is evenly divisible by all of the
numbers from 1 to 20? -}

module Questions.Q5 where

solve :: Int -> Int -> Int
solve from to =
    foldl1 lcm [from..to]

question :: String
question = "2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder. What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?"