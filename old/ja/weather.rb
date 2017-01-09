# # ja/weather
#
# ## 概要
# Weather Hacks から今日の天気情報を取得して表示します。
#
# ## 使い方
# 1. CITYに天気を表示したい地域コードを空白区切りで追加
# 2. 地域コードは那覇だと http://weather.livedoor.com/area/forecast/471010 の最後の数字です
# 3. 実行結果をテキストにコピーすると日々の天気や気温の移り変わりを記録することもできます

CITY = %w(016010 130010 270000 471010)

def main
  t = Time.now
  date = t.datestr
  
  puts "#{date} #{t.hour}:#{t.min} の天気\n\n" + 
  CITY.map { |e|
    LivedoorWeather.new(e).show(date)
  }.join("---\n")
end

class LivedoorWeather
  attr_reader :data
  
  def initialize(city)
    @city = city
    @data = Browser.json("http://weather.livedoor.com/forecast/webservice/json/v1?city=#{city}")
  end
  
  def show(today)
  <<EOS 
#{day_str(today)}の#{area}は#{telop(0)}(気温は#{temperature(0, "min")}から#{temperature(0, "max")}度)。
明日は#{telop(1)}(気温は#{temperature(1, "min")}から#{temperature(1, "max")}度)の予定。
#{url}
EOS
  end
  
  def day_str(today)
    if today == date(0)
      "今日" 
    else
      date(0)
    end
  end

  def telop(idx)
    @data["forecasts"][idx]["telop"]
  end
  
  def temperature(idx, kind)
     t = @data["forecasts"][idx]["temperature"][kind]
     t ? t["celsius"]  : "?"
  end
   
  def date(idx)
     @data["forecasts"][idx]["date"]
  end

  def area
    @data["location"]["city"]
  end
  
  def description
    @data["description"]["text"]
  end
  
  def url
    "http://weather.livedoor.com/lite/area/forecast/#{@city}"
  end
end

class Time
  def datestr
    sprintf("%04d-%02d-%02d", year, month, day)
  end
end
