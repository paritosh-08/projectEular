module Main where

import ProjectEular

main :: IO ()
main = do
  
  printQandA q1Ques (q1Solv 3 5 1 1000)

  printQandA q2Ques (q2Solv 4000000)

  printQandA q3Ques (q3Solv 600851475143)

  printQandA q4Ques (q4Solv 3)

  printQandA q5Ques (q5Solv 1 20)