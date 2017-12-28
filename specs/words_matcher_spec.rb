require_relative "../app/words_matcher"

RSpec.describe WordsMatcher do

  describe "get_all_anagrams" do

    context "given array of words" do
      let(:words_array){ ["Laid", "Better", "Dial", "Times", "Brain ", "Items"] }

      it "returns the anagrams of word Items" do
        words = WordsMatcher.new.get_all_anagrams("Times", words_array)
        expect(words).to be == ["Items"]
      end

      it "returns the anagrams of word Dial" do
        words = WordsMatcher.new.get_all_anagrams("Laid", words_array)
        expect(words).to be == ["Dial"]
      end

      it "returns none anagram for the word Better" do
        words = WordsMatcher.new.get_all_anagrams("Better", words_array)
        expect(words).to be == []
      end
    end
  end

  describe "#not_same_word?" do

    context "given two equal words" do
      let(:word){ "Laid" }
      let(:test_word){ "Laid" }

      it "returns false" do
        WordsMatcher.new.not_same_word?(word, test_word)
      end
    end

    context "given two not equal words" do
      let(:word){ "Dial" }
      let(:test_word){ "Diale" }

      it "returns true" do
        WordsMatcher.new.not_same_word?(word, test_word)
      end
    end
  end

  describe "#anagram?" do

    context "given two words with the same letters" do
      let(:word){ "Dial" }
      let(:test_word){ "Laid" }

      it "returns true" do
        WordsMatcher.new.anagram?(word, test_word)
      end
    end

    context "given two words with different letters" do
      let(:word){ "Dial" }
      let(:test_word){ "Diale" }

      it "returns false" do
        WordsMatcher.new.anagram?(word, test_word)
      end
    end
  end
end