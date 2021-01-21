dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts "And your word/sentence is: "
user_word = gets.chomp 

def substring(word, dictionary)
  array = []
  dictionary.each do |item| 
    string = word.downcase 
      while string.include? item do
        array.push(item)
        string = string.sub(item, '')
      end
  end
  return array
end

my_hash = substring(user_word, dictionary).tally

puts
puts "Dictionary's words repeat in your word/sentence, this number of times:"
puts my_hash
