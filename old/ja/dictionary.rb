# # ja/dictionary
#
# ## 概要
# アプリやサイトから辞書を引きます

def main
  text = Popup.input("word?")
  text = URI.encode_www_form_component(text)
  
  puts <<EOS
ウィズダム
mkwisdom://jp.monokakido.mkwisdom/search?text=#{text}

大辞林
mkdaijirin://jp.monokakido.daijirin/search?text=#{text}

Longman
http://www.ldoceonline.com/search/?q=#{text}

Weblio
http://ejje.weblio.jp/content/#{text}

Wikipedia(ja)
#{wikipedia(text, "ja")}

Wikipedia(en)
#{wikipedia(text)}

Google翻訳
http://translate.google.co.jp/?hl=ja#ja/en/#{text}

commit-m
http://commit-m.minamijoyo.com/commits/search?keyword=#{text}
EOS
end

def wikipedia(text, country = 'en')
  "http://#{country}.wikipedia.org/wiki/#{text}"
end
