authors = {"Charles Dickens" => "1870", "William Thackeray" => "1863", "Anthony Trollope" => "1882", "Gerard Manley Hopkins" => "1889"}

authors.each do|name,dod|
  puts "#{name} died in " + dod.to_s
end




