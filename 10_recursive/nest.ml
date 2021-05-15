(* add_to_each : int -> int list list -> int list list *)
let rec add_to_each n lst = match lst with
    [] -> []
    | first :: rest -> (n :: first) :: add_to_each n rest

(* prefix : int list -> int list list *)
let rec prefix lst = match lst with
    [] -> []
    | first :: rest -> [first] :: add_to_each first (prefix rest)

(* Testing *)
let test1 = add_to_each 1 [] = []
let test2 = add_to_each 1 [[2]] = [[1; 2]]
let test3 = add_to_each 1 [[2]; [2; 3]] = [[1; 2]; [1; 2; 3]]

let test11 = prefix [] = []
let test12 = prefix [1] = [[1]]
let test13 = prefix [1; 2] = [[1]; [1; 2]]
let test14 = prefix [1; 2; 3] = [[1]; [1; 2]; [1; 2; 3]]
