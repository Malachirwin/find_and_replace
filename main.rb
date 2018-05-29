require_relative "lib/find_and_replace"

string = File.read 'data/find_and_replace.txt'
puts string.downcase.find_all_and_replace('hello', 'bye')
