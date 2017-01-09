# Please return the Image object in the "def main"

def main
  imgs = Image.pick_from_library(100)
  puts imgs.map { |e| e.to_s }
end

class Image
  def to_s
    "width:#{width.to_i}, height:#{height.to_i}, aspect_ratio: #{aspect_ratio}"
  end
end
