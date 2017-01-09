# Please return the Image object in the "def main"
BRIGHT = -40
CONTRAST = 64

def main
  #img = Image.load("sample.jpg")  
  img = Image.pick_from_library

  img.gray.bright(BRIGHT).contrast(CONTRAST)
end
