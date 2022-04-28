{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE NoImplicitPrelude          #-}

module Hash where

import qualified Data.ByteString  as BS
import qualified Crypto.Hash as C
import qualified Data.ByteArray as BA
import PlutusTx.Prelude

keccak_256 :: BS.ByteString -> BS.ByteString
keccak_256 = BA.convert . C.hashWith C.Keccak_256
