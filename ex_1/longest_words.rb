phrase = "The quick brown fox jumps over the lazy dogs"
longest = ""
long = []
phrase.split(" ").each do |word|
if word.length > longest.length
  longest = word	
end
end
long << longest
marker = longest.length

phrase.split(" ").each do |word|
  if word!=longest
    if word.length==marker
    long << word
    end
  end
end
if long.length > 1
  puts "The longest words are: " 
  puts long
else
  puts "The longest word is: "
  puts long
end 
