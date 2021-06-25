-- Module for question 3
{- The prime factors of 13195 are 5, 7, 13 and 29. What is
the largest prime factor of the number 600851475143 ? -}

module Questions.Q3 where

primes :: [Integer]
primes = sieve [2..]
  where
    sieve (p:xs) = p : sieve [x | x <- xs, x `mod` p > 0]

allPrimeFactors :: Integer -> [Integer] -> [Integer]
allPrimeFactors _ [] = []
allPrimeFactors 1 _ = []
allPrimeFactors num (x:xs) = 
    if num `mod` x == 0
        then
            x : (allPrimeFactors (newNum) (takeWhile (<=newNum) xs))
        else
            allPrimeFactors num xs
        where
            newNum = num `div` x

solve :: Int -> Int
solve num = fromInteger (last (allPrimeFactors (toInteger num) primes))

question :: String
question = "The prime factors of 13195 are 5, 7, 13 and 29. What is the largest prime factor of the number 600851475143 ?"