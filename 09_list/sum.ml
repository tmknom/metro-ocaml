(* sum : int list -> int *)
let rec sum lst = match lst with
    [] -> 0
    | first :: rest -> first + sum rest

(* Testing *)
let test1 = sum [] = 0
let test2 = sum [1] = 1
let test3 = sum [1; 2; 3] = 6
let test4 = sum [1; 2; 3; 4; 5; 6; 7; 8; 9; 10] = 55
