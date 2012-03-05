require 'rubygems'

require_relative "../lib/anagrams"

describe "combine_anagrams" do
  it "shoud group words that can form the same anagram" do
    expected_groups = [["cars", "racs", "scar"], ["creams", "scream"], ["for"], ["four"], ["potatoes"]]
    result = combine_anagrams ['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream']
    result.should == expected_groups
  end
end

