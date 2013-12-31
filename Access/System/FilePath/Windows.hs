module Access.System.FilePath.Windows
    ( module System.FilePath.Windows

    , FilePathAccess(..)
    ) where


import System.FilePath.Windows

import Access.Core


class Access io => FilePathAccess io where
    getSearchPath' :: io [FilePath]


instance FilePathAccess IO where
    getSearchPath' = getSearchPath
