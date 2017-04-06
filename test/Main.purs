module Test.Main where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, logShow)
import Control.Monad.Eff.Exception (EXCEPTION)
import Test.Assert (ASSERT)

import Data.List.Lazy as L

main :: forall eff. Eff (assert :: ASSERT, console :: CONSOLE, exception :: EXCEPTION | eff) Unit
main = do
  let longList = L.range 1 1000000
      len = L.length longList
  logShow len
