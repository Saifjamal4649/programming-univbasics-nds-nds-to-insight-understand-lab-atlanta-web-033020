require 'yaml'

def directors_database
	rot13 = -> (s) { s.tr('A-Za-z', 'N-ZA-Mn-za-m') }
  @_db ||= YAML.load(rot13.call(File.open("directors_db").read.to_s))
  
end
require 'pp'

def pretty_print_nds(nds)
  # Change the code below to pretty print the nds with pp
  
  pp nds
  nil
end


def print_first_directors_movie_titles
  i = 0
  movies = directors_database[0][:movies]
  while i < movies.count do
    puts movies[i][:title]
    i += 1
  end
end
print_first_directors_movie_titles
