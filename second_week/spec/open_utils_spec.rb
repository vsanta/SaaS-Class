require_relative "../lib/open_utils"

describe Numeric do
   describe "yen" do
     it "should convert to dollars" do
       1.yen.in(:dollar).between?(0.013, 0.014).should be_true
     end
   end
   describe "dollars" do
     it "should convert to euros" do
       5.dollars.in(:euros).between?(3.86, 3.87).should be_true
     end
   end
  describe "euros" do
    it "should convert to dollars" do
      5.euros.in(:dollars).should == 6.46
    end
  end
  describe "rupees" do
    it "should convert to yen" do
      5.rupees.in(:yen).between?(7.2, 7.4).should be_true
    end
  end
end

describe Array do
  describe "palindrome?" do
     it "should return true" do
       [1,2,3,2,1].palindrome?.should be_true
       ["a", "b", "c", "b", "a"].palindrome?.should be_true
     end
     it "should be false" do
       [1,2,3,4,3,2].palindrome?.should be_false
     end
    it "should not error on non-sensical cases of enumerables, like hashes" do
       {"hello"=> "world"}.palindrome?
    end
    it "should still work for non-array enumerables that do make sense" do
      (1..2).palindrome?.should be_false
    end
  end
end

describe String do
  describe "palindrome?" do
    context "when it reads the same backwards as forwards, ignoring case, punctuation, and
  nonword characters"   do

      it "'A man, a plan, a canal -- Panama' is a palindrome" do
        "A man, a plan, a canal -- Panama".palindrome?.should be_true
      end
      it "'Madam, I'm Adam!' is a palindrome" do
        "Madam, I'm Adam!".palindrome?.should be_true
      end
    end
    it "'Abracadabra' is not a palindrome" do
      "Abracadabra".palindrome?.should be_false
    end
  end
end