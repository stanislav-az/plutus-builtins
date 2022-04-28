{-# LANGUAGE DeriveAnyClass     #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE TypeApplications   #-}
{-# LANGUAGE NoImplicitPrelude          #-}

module Internal where

import PlutusTx.Prelude
import PlutusTx.Builtins.Internal
import qualified Hash

{-# NOINLINE keccak_256 #-}
keccak_256 :: BuiltinByteString -> BuiltinByteString
keccak_256 (BuiltinByteString b) = BuiltinByteString $ Hash.keccak_256 b
