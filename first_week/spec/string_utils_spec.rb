require 'rubygems'

require_relative '../lib/string_utils'


describe "palindrome" do
  context "when it reads the same backwards as forwards, ignoring case, punctuation, and
nonword characters"   do

    it "'A man, a plan, a canal -- Panama' is a palindrome" do
      palindrome?("A man, a plan, a canal -- Panama").should be_true
    end
    it "'Madam, I'm Adam!' is a palindrome" do
      palindrome?("Madam, I'm Adam!").should be_true
    end
  end
  it "'Abracadabra' is not a palindrome" do
    palindrome?("Abracadabra").should be_false
  end
end

describe "count_words" do
  it "should return a hash of word: count in 'A man, a plan, a canal -- Panama'" do
    count_hash = {
        "a" => 3,
        "man" => 1,
        "plan" => 1,
        "canal" => 1,
        "panama" => 1,
    }
     count_words( 'A man, a plan, a canal -- Panama').should == count_hash
  end
  it "should return a hash of word: count in 'Doo bee doo bee doo'" do
    count_hash = {'doo' => 3, 'bee' => 2}
     count_words( 'Doo bee doo bee doo').should == count_hash
  end
end