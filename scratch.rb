1.upto(10) do
    puts "Howdy!"
end

5.upto(8) do |number|
    puts "#{number} alligator"
end

3.downto(1) do |numbers|
    puts "Launch in #{numbers}"
end

words = %w[dog zebra elephant chimpanzee]

words.each do |word|
    puts word.length
end