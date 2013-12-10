import Lab2
import Data.List


sortByDay list = sortBy (\x y -> compare (day x) (day y)) list
sortByMonth list = sortBy (\x y -> compare (month x) (month y)) list

result = filter (\x -> length x > 1) (groupBy (\x y -> (day x == day y) && (month x == month y)) (sortByMonth $ sortByDay students)) 

printResult [] = ""
printResult (x:xs) = "[" ++ printSame x ++ "]\n" ++ printResult xs

printSame [] = ""
printSame (x:xs) = name x ++ surname x ++ "\n" ++ printSame xs


  
