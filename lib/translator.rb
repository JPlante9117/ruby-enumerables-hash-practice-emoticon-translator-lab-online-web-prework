require 'pry'
require 'yaml'

def load_library(file)
  
  emoticons_hash = YAML.load_file(file)             #load the yaml file
  
  get_info = {get_meaning: {}, get_emoticon: {}}    #create a hash to gather the information
  
  emoticons_hash.each do |meaning, emoji|           #iterate through the yaml file
    get_info[:get_meaning][emoji[1]] = meaning      #grab the japanese emoji and translate it to a meaning
    get_info[:get_emoticon][emoji[0]] = emoji[1]    #translate by giving the English emoji
  end
  get_info                                          #RETURN THE VALUE
end

def get_japanese_emoticon(yaml, eng_emoji)
  library = load_library(yaml)                                #load the library using the given yaml file
  
  library                                                     #Actually loading it
  
  if library[:get_emoticon].include?(eng_emoji)                   #checks to see if the library includes the given emoticon
    library[:get_emoticon][eng_emoji]                             #returns the equivalent of the emoticon in Japanese
  else
    "Sorry, that emoticon is not found!"
  end
  
  
end

def get_english_meaning(yaml, jap_emoji)
  library = load_library(yaml)                                #load the library using the given yaml file
  
  library                                                     #Actually loading it
  
  if library[:get_emoticon].include?(jap_emoji)                   #checks to see if the library includes the given emoticon
    library[:get_emoticon][jap_emoji]                             #returns the equivalent of the emoticon in Japanese
  else
    "Sorry, that emoticon is not found!"
  end
end