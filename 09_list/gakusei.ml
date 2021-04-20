type gakusei_t = {
    namae: string;
    tensuu: int;
    seiseki: string;
}

(* gakusei_t list型のデータ例 *)
let lst1 = []
let lst2 = [{ namae = "asai"; tensuu = 70; seiseki = "A" }]
let lst3 = [{ namae = "asai"; tensuu = 85; seiseki = "A" };
            { namae = "kaneko"; tensuu = 80; seiseki = "A" };
            { namae = "yoshida"; tensuu = 70; seiseki = "B" }]

(* count_A : gakusei_t list-> int *)
let rec count_A lst = match lst with
    [] -> 0
    | {namae = n; tensuu = t; seiseki = s} :: rest
        -> if s = "A" then 1 + count_A rest
           else count_A rest

(* Testing *)
let test1 = count_A lst1 = 0
let test2 = count_A lst2 = 1
let test3 = count_A lst3 = 2
