# require modules here

require 'yaml'
require 'pry'

def load_library(path)
  # code goes here
  emoticons = YAML.load_file(path)
  new_hashes = {'get_emoticon' => {},
  'get_meaning' => {}}
  emoticons.each do |key, value|
    new_hashes["get_meaning"][value[1]] = key
    new_hashes["get_emoticon"][value[0]] = value[1]
  end
  new_hashes
end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end