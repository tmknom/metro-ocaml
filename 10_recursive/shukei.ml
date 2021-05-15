type gakusei_t = {
    namae: string;
    tensuu: int;
    seiseki: string;
}

let lst1 = []
let lst2 = [{ namae = "asai"; tensuu = 70; seiseki = "A" }]
let lst3 = [{ namae = "asai"; tensuu = 85; seiseki = "A" };
            { namae = "kaneko"; tensuu = 80; seiseki = "A" };
            { namae = "yoshida"; tensuu = 70; seiseki = "B" }]

(* shukei : gakusei_t list -> int * int * int * int *)
let rec shukei lst = match lst with
    [] -> (0, 0, 0, 0)
    | {namae = n; tensuu = t; seiseki = s} :: rest
        -> let (a, b, c, d) = shukei rest in
            if s = "A" then (a+1, b, c, d)
            else if s = "B" then (a, b+1, c, d)
            else if s = "C" then (a, b, c+1, d)
            else  (a, b, c, d+1)

(* Testing *)
let test1 = shukei lst1 = (0, 0, 0, 0)
let test2 = shukei lst2 = (1, 0, 0, 0)
let test3 = shukei lst3 = (2, 1, 0, 0)
