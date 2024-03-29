(* contain_zero : int list -> bool *)
let rec contain_zero lst = match lst with
    [] -> false
    | first :: rest ->
        if first = 0 then true
        else contain_zero rest

(* Testing *)
let test1 = contain_zero [] = false
let test2 = contain_zero [2; 1; 0] = true
let test3 = contain_zero [1; 2; 3] = false
