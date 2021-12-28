module Main where

import Control.Concurrent (threadDelay)
import Control.Concurrent.Async (async, wait)
import Control.Concurrent.STM.TChan (TChan, newTChan, readTChan, writeTChan)
import Control.Monad (forever)
import Control.Monad.STM (STM, atomically)
import System.Random (randomIO)

play :: String -> TChan Int -> IO ()
play name table = nextTurn
  where
    nextTurn = do
      ball <- atomically $ readTChan table
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
          atomically $ writeTChan table 0
        else do
          atomically $ writeTChan table (ball + 1)
          threadDelay 1
          nextTurn

main :: IO ()
main = do
  table <- atomically $ newTChan

  pingThread <- async (play "ping" table)
  pongThread <- async (play "pong" table)

  atomically $ writeTChan table 1

  _ <- wait $ pingThread
  _ <- wait $ pongThread

  return ()
