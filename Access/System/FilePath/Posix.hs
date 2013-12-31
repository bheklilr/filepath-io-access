module Access.System.FilePath.Posix
    ( module System.FilePath.Posix

    , FilePathAccess(..)
    ) where


import System.FilePath.Posix

import Access.Core


class Access io => FilePathAccess io where
    getSearchPath' :: io [FilePath]


instance FilePathAccess IO where
    getSearchPath' = getSearchPath
