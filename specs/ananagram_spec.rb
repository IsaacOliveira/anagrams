require_relative "../app/ananagram"
RSpec.describe Ananagram do

  describe ".initialize" do

    let(:words_reader) { instance_double(WordListReader) }
    after{ Ananagram.new(word_list_path: "test_path") }

    it "initialize the words reader with the path" do
      expect(WordListReader).to receive(:new).with(path: "test_path").and_return(words_reader)
      allow(words_reader).to receive(:get_words_sorted_hash)
    end

    it "gets the words list from the words reader" do
      allow(WordListReader).to receive(:new).and_return(words_reader)
      expect(words_reader).to receive(:get_words_sorted_hash)
    end

  end

end