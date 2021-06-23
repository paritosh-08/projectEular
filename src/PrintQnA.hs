module PrintQnA where

import System.Console.ANSI

printQnA :: String -> Int -> IO()
printQnA ques answer = do
  setSGR [SetColor Foreground Vivid Blue]
  putStr ("Q. " ++ ques)
  setSGR [Reset]
  setSGR [SetColor Foreground Vivid Green]
  putStr ("\nAns: " ++ show answer ++ "\n\n")
  setSGR [Reset]