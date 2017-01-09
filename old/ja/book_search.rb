# # ja/book_search
#
# ## 概要
# 本にまつわる便利サイトからまとめて検索できます。
# テイクストックは検索後に地域を指定してください。
# 想は右のCLEARボタンを押したあとにクリップボードから貼り付け。
# 本の書き出しはジャンプするだけです。

def main
  word = Popup.input("検索ワード？")
  Clipboard.set(word)
  word = URI.encode_www_form_component(word)
  
  puts <<EOF
テイクストック
https://takestock.jp/searches?q=#{word}

カーリル
http://calil.jp/search?q=#{word}

想
http://imagine.bookmap.info

本の書き出し
http://kakidashi.com

ダ・ヴィンチニュース
http://ddnavi.com/?s=#{word}

HONZ
http://honz.jp/search/?ie=UTF-8&page=1&fulltext=#{word}

bookvinegar
http://www.bookvinegar.jp/search/word/?q=#{word}

読書メーター
http://i.bookmeter.com/s?q=#{word}

本が好き！
http://www.honzuki.jp/smp/book/new_search/?search_word=#{word}
EOF
end
