# require modules here
require 'yaml'
require 'pry'
#convert YAML file to a file ruby can interpret
#load_library return a hash where each key is the name of an emoticon
def load_library(file_path)
  file_path = YAML.load_file('/lib/emoticons.yml')
  new_hash = {}

  file_path.each do |key, value|
  new_hash[key] = {}
  new_hash[key][:english] = file_path[key][0]
  new_hash[key][:japanese] = file_path[key][1]


end
new_hash
end


def get_japanese_emoticon(file_path, emoticon)
# will take a traditional Western emoticon (i.g. :)) and translate it to its Japanese version ((＾ｖ＾)).
#It will also rely load_library to first load the YAML file.
#  emoticons = load_library(file_path) #load library
#  emoji = emoticons.values.find {|faces| faces[0] == emoticon}
  #emoji == nil ? "Sorry, that emoticon was not found" : emoji[1]

end

def get_english_meaning(file_path, emoticon)
  #takes a Japanese emoticon and returns its name in English.
  #This method will rely on load_library to first load the YAML file.
#  emoticons = load_library(file_path)#load library
#  emoji = emoticons.find {|name, faces| faces[1] == emoticon}
#  emoji == nil ? "Sorry, that emoticon was not found" : emoji[0]
end
