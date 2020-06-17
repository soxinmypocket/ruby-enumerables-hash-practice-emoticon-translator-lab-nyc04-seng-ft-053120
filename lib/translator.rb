# require modules here
require 'yaml'
require 'pry'
#convert YAML file to a file ruby can interpret
#load_library return a hash where each key is the name of an emoticon
def load_library(file_path)
  file = File.read(file_path)
  emoticons = YAML.load(file)

end
#return a hash where each key is the name of an emoticon.

# hash = {}
# YAML.load_file(file_path).each do |meaning, emoji|
#        hash["get_meaning"][emoji[1]] = meaning
#        hash["get_emoticon"][emoji[0]] = emoji[1]
#     end
#      return hash

def get_japanese_emoticon(file_path, emoticon)

  emoticons = load_library(file_path) #load library
  emoji = emoticons.values.find {|faces| faces[0] == emoticon}
  emoji == nil ? "Sorry, that emoticon was not found" : emoji[1]

end

def get_english_meaning(file_path, emoticon)
  emoticons = load_library(file_path)
  emoji = emoticons.find {|name, faces| faces[1] == emoticon}
  emoji == nil ? "Sorry, that emoticon was not found" : emoji[0]
end
