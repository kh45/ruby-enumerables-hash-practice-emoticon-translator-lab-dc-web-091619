require "yaml"

def load_library(path)
  emotions = YAML.load_file(path)
  emo = {"get_meaning" => {}, "get_emoticon" => {}}
  emotions.keys.each{|key|
    emo["get_meaning"][emotions[key][1]] = key
    emo["get_emoticon"][emotions[key][0]] = emotions[key][1]}
    emo
end

def get_japanese_emoticon(path, emoticon)
   emotions = load_library(path)
   if !emotions["get_emoticon"][emoticon] 
     return "Sorry!"
    else emotions["get_emoticon"][emoticon] 
end

def get_english_meaning
  # code goes here
end