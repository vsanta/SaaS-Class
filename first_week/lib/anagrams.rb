

def combine_anagrams words
  anagram_groups = Hash.new([])
  words.each do |word|
      anagram_key = word.downcase.chars.to_a.sort
      if anagram_groups.has_key? anagram_key
        anagram_groups[anagram_key].push word
      else
        anagram_groups[anagram_key] = [word]

      end
  end
  anagram_groups.values.sort
end