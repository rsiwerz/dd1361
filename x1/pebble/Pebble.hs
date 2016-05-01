module Main where

type Board = String
type Pebble = Int

main :: IO ()
main = interact (unlines . map show . filter(>0) . map bestMove . lines)


countPebbles :: String -> Pebble
countPebbles = length . filter (== 'o')


canMove :: Board -> Int -> Bool
canMove _ 11 = False
canMove board i
  | (board!!i == 'o') && (board!!(i+1) == 'o') = True
  | otherwise = canMove board (i+1)


bestMove :: Board -> Pebble
bestMove [] = 0
bestMove (x:[]) = 0
bestMove board = if canMove board 0
                        then min (countPebbles board) $ min (tryLeft board 0) (tryRight board 0)
                        else countPebbles board

tryLeft :: Board -> Int -> Pebble
tryLeft board 11 = countPebbles board
tryLeft board i
  | (i-1) >= 0 && board!!i == 'o' && board!!(i+1) == 'o' && board!!(i-1) == '-' = bestMove leftMove
  | otherwise = tryLeft board (i+1)
  where leftMove = take (i-1) board ++ "o--" ++ drop (i+2) board

tryRight :: Board -> Int -> Pebble
tryRight board 11 = countPebbles board 
tryRight board i
  | (i+2) < 12 && board!!i == 'o' && board!!(i+1) == 'o' && board!!(i+2) == '-' = bestMove rightMove
  | otherwise = tryRight board (i+1)
  where rightMove = take i board ++ "--o" ++ drop (i+3) board


        

