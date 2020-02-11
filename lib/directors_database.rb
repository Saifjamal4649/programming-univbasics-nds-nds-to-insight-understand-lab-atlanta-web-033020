require 'yaml'

def directors_database
	rot13 = -> (s) { s.tr('A-Za-z', 'N-ZA-Mn-za-m') }
  @_db ||= YAML.load(rot13.call(File.open("directors_db").read.to_s))
  
end
require 'pp'

def pretty_print_nds(nds)
  # Change the code below to pretty print the nds with pp
  nil
  pp nds
end

# printing directors_database
pretty_print_nds(directors_database)

def print_first_directors_movie_titles
  movies_ar = directors_database[0][:movies]
  movies_ar_index = 0
  while movies_ar_index < movies_ar.count do
    puts movies_ar[movies_ar_index][:title]
    movies_ar_index += 1 
  end 
end

# checking the result
print_first_directors_movie_titles
