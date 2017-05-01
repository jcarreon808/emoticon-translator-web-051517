# require modules here
require 'yaml'
def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  emoticons_hash={}
  emoticons_hash["get_emoticon"]={}
  emoticons_hash["get_meaning"]={}

    emoticons.each do |english, array|
      emoticons_hash["get_meaning"][array.last]=english
      emoticons_hash["get_emoticon"][array.first]=array.last
    end

  emoticons_hash
end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
  emoticons_hash = load_library(file_path)
  result = emoticons_hash["get_emoticon"][emoticon]
  if result === nil
    return "Sorry, that emoticon was not found"
  else
    return result
  end
end

def get_english_meaning(file_path, emoticon)
  # code goes here
  emoticons_hash= load_library(file_path)
  result = emoticons_hash["get_meaning"][emoticon]

  if result === nil
    return "Sorry, that emoticon was not found"
  else
    return result
  end

end
