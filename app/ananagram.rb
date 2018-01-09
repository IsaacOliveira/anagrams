require_relative "word_list_reader"

class Ananagram

  def initialize(word_list_path: "docs/wl.txt")
    @words_sorted_hash = WordListReader.new(path: word_list_path).get_words_sorted_hash
  end

  def start
    @words_sorted_hash.values.each do | anagrams |
      print "#{anagrams.join(" ")}\n" if anagrams.size == 1
    end
  end

end