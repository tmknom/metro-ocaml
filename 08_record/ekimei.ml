type ekimei_t = {
    kanji: string;
    kana: string;
    romaji: string;
    shozoku: string;
}

type ekikan_t = {
    kiten: string;
    shuten: string;
    keiyu: string;
    kyori: int;
    jikan: int;
}

(* hyoji : ekimei_t -> string *)
let hyoji ekimei = match ekimei with
    {kanji = kj; kana = kn; romaji = rm; shozoku = sz} ->
        sz ^ ", " ^ kj ^ "（" ^ kn ^ "）" ;;

(* Testing *)
let test1 = hyoji {kanji = "茗荷谷"; kana = "みょうがだに"; romaji = "myogadani"; shozoku = "丸ノ内線"} = "丸ノ内線, 茗荷谷（みょうがだに）"
