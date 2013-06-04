get '/:word' do
  word = params[:word]
  sorted_word = word.split('').sort.join
  anagrams = Word.find_all_by_anagram(sorted_word)
  found = anagrams.select{|word| word.anagram == sorted_word}
  erb :index, :locals => {:found => found}
end

