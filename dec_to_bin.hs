import Data.Bits

removeLastBit x = (x `shift` (-1)) `shift` 1

lastBitToStr x = if x /= removeLastBit x then "1" else "0"

decToBin :: Integer -> String
decToBin x = if x /= 0 then (decToBin (x `shift` (-1))) ++ (lastBitToStr x) else "0"


main = putStrLn (decToBin 52)
