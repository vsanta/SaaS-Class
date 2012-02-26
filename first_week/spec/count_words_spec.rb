require_relative '../lib/count_words'

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