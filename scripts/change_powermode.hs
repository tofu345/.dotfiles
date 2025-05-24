import System.Environment (getArgs)
import System.Directory (listDirectory)
import Data.Char (isDigit)
import Control.Monad (forM_)

main = do
    -- assume all cores have same powermode
    modes <- words <$> readFile "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors"
    args <- getArgs
    case args of
        [mode] | mode `elem` modes -> changeTo mode
        _ -> putStrLn "Err: invalid argument"

changeTo mode = do
    let baseDir = "/sys/devices/system/cpu/"
        path el = baseDir ++ el ++ "/cpufreq/scaling_governor"
    contents <- listDirectory baseDir
    forM_ (path <$> filter cpus contents) $ \f -> writeFile f mode
    where
    cpus (_:_:_:el:_) = isDigit el
    cpus _ = False
