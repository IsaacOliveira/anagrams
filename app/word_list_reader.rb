class WordListReader

  def initialize(path: "docs/wl.txt")
    @path = path
  end

  def get_words_sorted_hash
    words_hash = {}
    open_file.split(/[\r\n]+/).each do | word |
      words_hash[word.downcase.chars.sort.join] = [] if words_hash[word.downcase.chars.sort.join].nil?
      words_hash[word.downcase.chars.sort.join] << word
    end
    words_hash
  end

  private
  def open_file
    File.open(@path).read
  end
end