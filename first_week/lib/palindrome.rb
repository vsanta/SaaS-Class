require 'string_helper'
include StringHelper
def palindrome? word
  cleaned_up_word = remove_punctuation_and_spaces(word).downcase
  cleaned_up_word == cleaned_up_word.reverse
end



