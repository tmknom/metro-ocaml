(* add : int *int -> int *)
let add pair = match pair with
    (a, b) -> a + b

(* Testing *)
let test1 = add (0, 0) = 0
let test1 = add (3, 5) = 8
let test1 = add (3, -5) = -2
