class WordsMatcher

  def get_all_anagrams(word, words_array)
    words_array.select do | test_word |
      anagram?(word, test_word) && not_same_word?(word, test_word)
    end
  end

  def anagram?(word, test_word)
    sort_word(test_word) == sort_word(word)
  end

  def not_same_word?(word, test_word)
    test_word != word
  end

  private
  def sort_word(word)
    word.downcase.chars.sort.join
  end

end