class Word < ActiveRecord::Base
  # Remember to create a migration!

  def self.anagrams_for(input)

    my_word = Word.where(canonical: canonical(input))
    # anagrams = [ ]
    # Word.all.select do |x|
    #   anagrams.insert(word) if is_anagram?(word, x) }
    # end
    # my_word.each do |w|
    #  puts "#{w.name}"
    #  end
  end

  def self.canonical(input)
    input.downcase.split("").sort.join
  end

  def self.is_anagram?(input1, input2)
    canonical(input1) == canonical(input2)
  end


end



# def anagrams_for(word, dictionary)
#     anagrams = [ ]
#     dictionary.select { |x| anagrams.insert(word) if is_anagram?(word, x) }
# end

# # The dictionary is just an arbitrary collection of strings.
# # It need not contain English words, e.g., 'etlsm'.
# dictionary = ['acres', 'cares', 'Cesar', 'races', 'smelt', 'melts', 'etlsm']

# # If the input word happens to be in the dictionary, it should be in the the returned array, too.
# # The list should also be case-insensitive.
# p anagrams_for('acres', dictionary) # => ['acres', 'cares', 'Cesar', 'races']
# p anagrams_for('ACRES', dictionary) # => ['acres', 'cares', 'Cesar', 'races']
# p anagrams_for('Cesar', dictionary) # => ['acres', 'cares', 'Cesar', 'races']

# # Although "sacre" is not *in* the dictionary, several words in the dictionary are anagrams of "sacre"
# p anagrams_for('sacre', dictionary) # => ['acres', 'cares', 'Cesar', 'races']

# # Neither the input word nor the words in the dictionary need to be valid English words
# p anagrams_for('etlsm', dictionary) # => ['smelt', 'melts', 'etlsm']

# p anagrams_for('unicorn', dictionary) # => []