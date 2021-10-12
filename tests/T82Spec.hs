{-# LANGUAGE CPP #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeFamilies #-}

#if __GLASGOW_HASKELL__ >= 706
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE PolyKinds #-}
#endif

module T82Spec (main, spec) where

import Test.Hspec

#if MIN_VERSION_base(4,10,0)
import Generics.Deriving.TH
import GHC.Exts (RuntimeRep, TYPE)

data Code m (a :: TYPE (r :: RuntimeRep)) = Code
$(deriveAll0And1 ''Code)
#endif

main :: IO ()
main = hspec spec

spec :: Spec
spec = return ()
