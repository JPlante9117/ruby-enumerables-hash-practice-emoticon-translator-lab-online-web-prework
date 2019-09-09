require 'pry'
require 'yaml'

def load_library(file)
  
  emoticons_hash = YAML.load_file(file)
  
  get_info = {get_meaning: {}, get_emoji: {}}
  
  emoticons_hash.each do |meaning, emoji|
    get_info[:get_meaning][emoji[1]] = meaning
    get_info[:get_emoji][emoji[0]] = emoji[1]
  end
  get_info
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end