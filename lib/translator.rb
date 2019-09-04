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
   emotions["get_meaning"][emoticon]
end

def get_english_meaning
  # code goes here
end