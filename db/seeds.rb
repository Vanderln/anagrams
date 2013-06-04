dictionary  = File.open('app/words')
dictionary.each_line do |word|
  Word.create(:word => word.chomp, :anagram => word.chomp.downcase.split('').sort.join)
end

