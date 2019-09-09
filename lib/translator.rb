require 'pry'
require 'yaml'

def load_library(file)
  
  emoticons_hash = YAML.load_file(file)
  
  get_info = {get_meaning: {}, get_emoji: {}}
  
  emoticons_hash.each do |a, b|
    binding.pry
  end
  
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end