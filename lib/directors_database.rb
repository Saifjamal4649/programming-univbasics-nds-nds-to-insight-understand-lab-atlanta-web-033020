require 'yaml'

def directors_database
	rot13 = -> (s) { s.tr('A-Za-z', 'N-ZA-Mn-za-m') }
  @_db ||= YAML.load(rot13.call(File.open("directors_db").read.to_s))
  
end
require 'directors_database'
# Call the method directors_database to retrieve the NDS

directors_database
def pretty_print_nds(nds)
  # Change the code below to pretty print the nds with pp
  nil
 pp nds
end

def print_first_directors_movie_titles
  index = 0
  while index < directors_database[0][:movies].length do
    puts directors_database[0][:movies][index][:title]
    index += 1
  end
end