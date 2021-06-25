module Main where

import System.Exit (exitFailure, exitSuccess)
import Test.HUnit
import Questions.Q1 as Q1
import Questions.Q2 as Q2
import Questions.Q3 as Q3
import Questions.Q4 as Q4
import Questions.Q5 as Q5

test1 = TestCase (assertEqual "Testing 1st question:" 23 (Q1.solve 3 5 1 10))
-- >>> Q1.solve 3 5 1 10
-- 23

test2 = TestCase (assertEqual "Testing 2nd question:" 798 (Q2.solve 1000))
-- >>> Q2.solve 1000
-- 798

test3 = TestCase (assertEqual "Testing 3rd question:" 6857 (Q3.solve 600851475143))
-- >>> Q3.solve 600851475143
-- 6857

test4 = TestCase (assertEqual "Testing 4th question:" 906609 (Q4.solve 3))
-- >>> Q4.solve 3
-- 906609

test5 = TestCase (assertEqual "Testing 5th question:" 232792560 (Q5.solve 1 20))
-- >>> Q5.solve 1 20
-- 232792560

tests = TestList [TestLabel "Q1 checking..." test1, TestLabel "Q2 checking..." test2, TestLabel "Q3 checking..." test3, TestLabel "Q4 checking..." test4, TestLabel "Q5 checking..." test5]

main :: IO ()
main = do
    count <- runTestTT tests
    if failures count >0
        then do
            putStr ("Total number of failed test cases: " ++ show (failures count))
            exitFailure
        else do
            putStr "All tests passed with flying colors"
            exitSuccess
