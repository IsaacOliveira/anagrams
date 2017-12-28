class WordListReader

  def initialize(path: "docs/wl.txt")
    @path = path
  end

  def get_words_array
    open_file.split(/[\r\n]+/)
  end

  private
  def open_file
    File.open(@path).read
  end
end