require 'string_helper'
include StringHelper
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