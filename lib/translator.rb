# require modules here
require "yaml" 
emoticons = YAML.load_file('./lib/emoticons.yml')
emoticons
def load_library(emoticons)
 new_hash = {
   "get_meaning": {},
   "get_emoticon": {}
 }
  
  emoticons.each do |key, value|
   new_hash = ["get_emoticon"][value[0]] = emoticons[key][1] 
   new_hash = ["get_meaning"][value]
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end