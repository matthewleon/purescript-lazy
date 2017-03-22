module Test.Main where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, logShow)
import Control.Monad.Eff.Console.BrowserSpecific.Profile (profile, profileEnd)
import Control.Monad.Eff.Exception (EXCEPTION)
import Test.Assert (ASSERT)

import Data.List.Lazy as L

main :: forall eff. Eff (assert :: ASSERT, console :: CONSOLE, err :: EXCEPTION | eff) Unit
main = do
  profile
  let longList = L.range 1 1000000
      len = L.length longList
  profileEnd
  logShow len
