module Main where

import Questions.Q1 as Q1
import Questions.Q2 as Q2
import Questions.Q3 as Q3
import Questions.Q4 as Q4
import Questions.Q5 as Q5

import PrintQnA ( printQnA )

main :: IO ()
main = do
  
  printQnA Q1.question (Q1.solve 3 5 1 1000)

  printQnA Q2.question (Q2.solve 4000000)

  printQnA Q3.question (Q3.solve 600851475143)

  printQnA Q4.question (Q4.solve 3)

  printQnA Q5.question (Q5.solve 1 20)