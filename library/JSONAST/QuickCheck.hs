module JSONAST.QuickCheck where

import Prelude
import JSONAST
import Test.QuickCheck
import Test.QuickCheck.Instances


instance Arbitrary JSON where
  arbitrary =
    oneof [null, bool, number, string, array, object]
    where
      null =
        pure Null
      bool =
        fmap Bool arbitrary
      number =
        fmap Number arbitrary
      string =
        fmap String arbitrary
      array =
        fmap Array arbitrary
      object =
        fmap Object arbitrary
