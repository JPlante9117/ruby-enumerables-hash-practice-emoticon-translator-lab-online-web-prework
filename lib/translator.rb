require 'pry'
require 'yaml'

def load_library(file)
  
  emoticons_hash = YAML.load_file(file)
  
  get_info = {get_meaning: {}, get_emoji: {}}
  
  emoticons_hash.each do |meaning, emoji|
    get_info[:get_meaning][meaning] = meaning
    get_info[:get_emoji][emoji] = emoticon
  end
  
  get_info
  binding.pry
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end