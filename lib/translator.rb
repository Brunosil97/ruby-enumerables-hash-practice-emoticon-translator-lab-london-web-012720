require "yaml" 

def load_library(file_path)
  emoticons = YAML.load_file(file_path) 
  
 new_hash = {
   'get_meaning' => {},
   'get_emoticon' => {}
 }
  emoticons.each do |key, value|
   new_hash['get_emoticon'][value[0]] = emoticons[key][1] #
   new_hash['get_meaning'][value[1]] = key #saying what the japanese emoticons are in english 
 end 
 new_hash
end

def get_japanese_emoticon(file_path, emoticon)
  result = load_library(file_path)['get_emoticon'][emoticon]
  result ? result : ""
  # code goes here
end

def get_english_meaning
  # code goes here
end