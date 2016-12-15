{-# language TypeOperators, DataKinds, TypeApplications, DeriveDataTypeable #-}
import Servant
import Data.Proxy               (Proxy)
import Network.Wai.Handler.Warp (run)
import System.Console.CmdArgs   (Data, Typeable, cmdArgs)

data Sserve = Sserve { port :: Int } deriving (Data, Typeable)

main = do
  port' <- port <$> (cmdArgs $ Sserve { port = 8081 })
  putStrLn  $ "Serving on port " ++ show port'
  run port' $ serve (Proxy @Raw) (serveDirectory "./")
