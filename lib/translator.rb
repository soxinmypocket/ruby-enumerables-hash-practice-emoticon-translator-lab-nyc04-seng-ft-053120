# require modules here
require 'yaml'
require 'pry'
#convert YAML file to a file ruby can interpret
#load_library return a hash where each key is the name of an emoticon
def load_library(file_path)
  emoticons = YAML.load_file(file_path)
#Each emoticon name should point to a nested hash containing two keys, :english and :japanese.
#These keys will point to English and Japanese versions of the emoticon.
new_hash = {}
#key is assigned to emoji meaning
emoticons.each do |key, value|
  emoticons[key] => new_hash
#value assigned to new hash with :english key=> english emoji
emoticons[:english][0] => new_hash[0]
#value assigned to new hash with :japanese key=> japanese emoji value
emoticons[:japanese][1]=> new_hash[1]

  end
return new_hash

end


def get_japanese_emoticon(file_path, emoticon)
# will take a traditional Western emoticon (i.g. :)) and translate it to its Japanese version ((＾ｖ＾)).
#It will also rely load_library to first load the YAML file.
  emoticons = load_library(file_path) #load library
  emoji = emoticons.values.find {|faces| faces[0] == emoticon}
  emoji == nil ? "Sorry, that emoticon was not found" : emoji[1]

end

def get_english_meaning(file_path, emoticon)
  #takes a Japanese emoticon and returns its name in English.
  #This method will rely on load_library to first load the YAML file.
  emoticons = load_library(file_path)#load library
  emoji = emoticons.find {|name, faces| faces[1] == emoticon}
  emoji == nil ? "Sorry, that emoticon was not found" : emoji[0]
end
