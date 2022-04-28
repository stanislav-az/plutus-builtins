{-# OPTIONS_GHC -fno-omit-interface-pragmas #-}
{-# OPTIONS_GHC -fno-ignore-interface-pragmas #-}
{-# LANGUAGE NoImplicitPrelude          #-}

module Builtins where

import PlutusTx.Prelude
import qualified Internal as BI

{-# INLINABLE keccak_256 #-}
keccak_256 :: BuiltinByteString -> BuiltinByteString
keccak_256 = BI.keccak_256
