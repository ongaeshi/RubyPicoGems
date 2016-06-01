# RubyPicoGems

Sample Code of RubyPico.

## Install get_sample script

### 1. Copy below script

```ruby
# # get_sample
#
# ## Description
# Show sample code from RubyPicoGems

def main
  url = "http://raw.githubusercontent.com"
  name = Popup.input "Name?(e.g. 'sepia' or 'ja/heisei')"
  name = URI.encode_www_form_component name
  
  Browser.get "#{url}/ongaeshi/RubyPicoGems/master/#{name}.rb"
end
```

### 2. Install

1. Tap '+'
2. New File: "get_sample" -> OK
3. Tap "get_sample"
4. Long tap text area -> "Select All" -> "Paste"

### 3. Run

1. Tap "get_sample"
2. Tap Run
3. Name?: "SCRIPT NAME" (e.g. 'sepia' or 'ja/heisei') -> OK
4. Script is displayed
5. Copy script to clipboard if tap the "Save" button

### 4. Search

[RubyPicoGem](https://github.com/ongaeshi/RubyPicoGems)


