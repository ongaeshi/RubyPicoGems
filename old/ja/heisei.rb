# # ja/heisei
#
# ## 概要
# 今が平成何年か表示します。

def main
  t = Time.now
  h = t.year - 1989 + 1
  puts "平成#{h}年#{t.month}月#{t.day}日"
end
