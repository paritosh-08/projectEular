module Main where

-- import HaskellSay (haskellSay)
import Questions.Q1
import Questions.Q2
import PrintQnA

main :: IO ()
main = do
  -- "Q1. " ++ q1Text ++ "\n\n\n\nAns: " ++ show (q1 1 2 3 4)
  printQnA q1Text (q1 3 5 1 1000)

  printQnA q2Text (fromInteger (q2 4000000))