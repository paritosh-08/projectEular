{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_projectEular (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/paritosh/.cabal/bin"
libdir     = "/home/paritosh/.cabal/lib/x86_64-linux-ghc-8.6.5/projectEular-0.1.0.0-inplace-projectEular"
dynlibdir  = "/home/paritosh/.cabal/lib/x86_64-linux-ghc-8.6.5"
datadir    = "/home/paritosh/.cabal/share/x86_64-linux-ghc-8.6.5/projectEular-0.1.0.0"
libexecdir = "/home/paritosh/.cabal/libexec/x86_64-linux-ghc-8.6.5/projectEular-0.1.0.0"
sysconfdir = "/home/paritosh/.cabal/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "projectEular_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "projectEular_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "projectEular_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "projectEular_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "projectEular_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "projectEular_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
