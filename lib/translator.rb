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

def get_japanese_emoticon(yaml, emoji)
  load_library(yaml)
end

def get_english_meaning
  # code goes here
end