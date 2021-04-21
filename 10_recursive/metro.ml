(* 事前に「#use "define.ml" ;;」を実行しておく *)

(* romaji_to_kanji : string -> ekimei_t list -> string *)
let rec romaji_to_kanji arg_romaji lst = match lst with
    [] -> ""
    | {kanji = kj; kana = kn; romaji = rm; shozoku = sz} :: rest
        -> if arg_romaji = rm then kj
           else romaji_to_kanji arg_romaji rest

let test1 = romaji_to_kanji "myogadani" global_ekimei_list = "茗荷谷"
let test2 = romaji_to_kanji "invalid" global_ekimei_list = ""

(* get_ekikan_kyori : string -> string -> ekikan_t list -> float *)
let rec get_ekikan_kyori arg_kiten arg_shuten lst = match lst with
    [] -> infinity
    | {kiten = ki; shuten = sh; keiyu = ke; kyori = ky; jikan = ji} :: rest
        -> if arg_kiten = ki && arg_shuten = sh then ky
           else if arg_kiten = sh && arg_shuten = ki then ky
           else get_ekikan_kyori arg_kiten arg_shuten rest

let test3 = get_ekikan_kyori "茗荷谷" "新大塚" global_ekikan_list = 1.2
let test4 = get_ekikan_kyori "新大塚" "茗荷谷" global_ekikan_list = 1.2
let test4 = get_ekikan_kyori "渋谷" "茗荷谷" global_ekikan_list = infinity
