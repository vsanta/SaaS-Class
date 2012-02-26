require 'spec_helper'
require_relative '../lib/palindrome'


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