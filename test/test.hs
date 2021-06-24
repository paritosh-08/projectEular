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
-- >>> 1+1

test2 = TestCase (assertEqual "Testing 2nd question:" 798 (Q2.solve 1000))
tests = TestList [TestLabel "Q1 checking..." test1, TestLabel "Q2 checking..." test2]

main :: IO ()
main = do
    count <- runTestTT tests
    if failures count >0
        then do
            putStr (show (failures count))
            exitFailure
        else do
            -- putStr "Test Passed"
            exitSuccess