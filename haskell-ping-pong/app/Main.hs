module Main where

import Control.Concurrent (threadDelay)
import Control.Concurrent.Async (wait, async)
import Control.Concurrent.STM.TBQueue (TBQueue, newTBQueue, readTBQueue, writeTBQueue)
import Control.Monad (forever)
import Control.Monad.STM (STM, atomically)
import System.Random (randomIO)

play :: String -> TBQueue Int -> IO ()
play name table = nextTurn
  where
    nextTurn = do
      ball <- atomically $ readTBQueue table
      if ball == 0
        then newScore
        else receive ball

    newScore = do
      putStrLn ("Score for " <> name)

    receive ball = do
      putStrLn (show ball <> " => " <> name)
      randInt :: Int <- randomIO
      threadDelay 500_000
      if randInt `mod` 61 == 0
        then do
          putStrLn (name <> " missed")
          atomically $ writeTBQueue table 0
        else do
          atomically $ writeTBQueue table (ball + 1)
          threadDelay 1
          nextTurn

main :: IO ()
main = do
  table <- atomically $ newTBQueue 1

  pingThread <- async (play "ping" table)
  pongThread <- async (play "pong" table)

  atomically $ writeTBQueue table 1

  _ <- wait $ pingThread
  _ <- wait $ pongThread

  return ()
