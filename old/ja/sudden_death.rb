# # ja/sudden_death
#
# ## 概要
# 突然の死ジェネレータ

def main
  word = Popup.input("何？")
  
  puts <<EOS
#{header(word)}
＞#{word}＜
#{footer(word)}
EOS
end

def header(word)
  f(word, "人" , "＿")
end

def footer(word)
  f(word, "Ｙ", "￣", "^", true)
end

def f(word, a, b, c = " ", swap = false)
  w = word.size / 2
  l = a * (w + w % 2)
  r = a * w
  l, r = r, l if swap
  b + l + c + r + b
end
