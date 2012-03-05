module StringHelper
  def remove_punctuation_and_spaces word
    remove_punctuation(word).gsub(/\s+/, '')
  end

  def remove_punctuation word
    word.gsub(/[^a-zA-Z0-9\s]/, '')
  end
end

include StringHelper

def palindrome? word
  cleaned_up_word = remove_punctuation_and_spaces(word).downcase
  cleaned_up_word == cleaned_up_word.reverse
end

def count_words string
  string_no_punctuation = remove_punctuation string
  count_hash = {}
  string_no_punctuation.downcase.split(" ").each do | word|
    if count_hash.has_key? word
      count_hash[word] +=1
    else
      count_hash[word] = 1
    end
  end
  count_hash
end



