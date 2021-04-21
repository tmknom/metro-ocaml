let max_int = 1000

(* min : int -> int list -> int *)
let rec min lst = match lst with
    [] -> max_int
    | first :: rest ->
        let min_rest = min rest in
            if first <= min_rest
            then first
            else min_rest

(* Testing *)
let test1 = min [3] = 3
let test2 = min [2; 1] = 1
let test3 = min [2; 3] = 2
let test4 = min [5; 3; 4; 2; 10] = 2
