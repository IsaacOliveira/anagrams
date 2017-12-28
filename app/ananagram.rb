require_relative "word_list_reader"
require_relative "words_matcher"

class Ananagram

  def initialize(word_list_path: "docs/wl.txt")
    @words_array = WordListReader.new(path: word_list_path).get_words_array
    @words_matcher = WordsMatcher.new
  end

  def start
    @words_array.delete_if do | word |
      anagrams = @words_matcher.get_all_anagrams(word, @words_array)
      print "#{word}\n" if anagrams.empty?
      true
    end
  end

end