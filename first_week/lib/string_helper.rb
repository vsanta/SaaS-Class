module StringHelper
  def remove_punctuation_and_spaces word
    remove_punctuation(word).gsub(/\s+/, '')
  end

  def remove_punctuation word
    word.gsub(/[^a-zA-Z0-9\s]/, '')
  end

end