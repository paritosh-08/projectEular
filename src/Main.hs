module Main where

import Questions.Q1 ( q1, q1Text )
import Questions.Q2 ( q2, q2Text )
import Questions.Q3 ( q3, q3Text )
import Questions.Q4 ( q4, q4Text )

import PrintQnA ( printQnA )

main :: IO ()
main = do
  -- "Q1. " ++ q1Text ++ "\n\n\n\nAns: " ++ show (q1 1 2 3 4)
  printQnA q1Text (q1 3 5 1 1000)

  printQnA q2Text (q2 4000000)

  printQnA q3Text (q3 600851475143)

  printQnA q4Text (q4 3)