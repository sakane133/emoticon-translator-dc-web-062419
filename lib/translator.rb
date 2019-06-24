# require modules here

require 'yaml'
require 'pry'

def load_library(path)
  # code goes here
  emoticons = YAML.load_file(path)
  new_hashes = {'get_emoticon' => {},
  'get_meaning' => {}}
  emoticons.each do |key, value|
    # binding.pry
    new_hashes["get_emoticon"][value[0]] = value[1]
    new_hashes["get_meaning"][value[1]] = key
  end
  new_hashes
end


def get_japanese_emoticon(yaml_file, emoticon)
  # code goes here
  lib = load_library(yaml_file)
 if library["get_emoticon"].include?(english_emoticon) 
    library["get_emoticon"][english_emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(yaml_file, emot)
  # code goes here
  library = load_library(yaml_file)
end