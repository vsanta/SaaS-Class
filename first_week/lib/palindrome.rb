def palindrome? word
  cleaned_up_word = remove_punctioation_and_spaces(word).downcase
  cleaned_up_word == cleaned_up_word.reverse
end

private
def remove_punctioation_and_spaces word
  word.gsub(/\W+/, '').gsub(/\s+/, '')
end


