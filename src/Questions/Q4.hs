module Questions.Q4 where

q4Text:: String
q4Text = "A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99. Find the largest palindrome made from the product of two 3-digit numbers."

isPalindrome :: String -> Bool
isPalindrome word = word == reverse word

getAllNdigitNum :: Int -> [Int]
getAllNdigitNum n = [from..to]
    where
        from = (10^(n-1))
        to = (10^n) - 1

q4 :: Int -> Int
q4 n = maximum (getAllPalindromeProducts (getAllNdigitNum n))

getAllPalindromeProducts :: [Int] -> [Int]
getAllPalindromeProducts lst = 
    [x1*x2 | x1 <- lst, x2 <- lst, x1>=x2, isPalindrome (show (x1*x2))]