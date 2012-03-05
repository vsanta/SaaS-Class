require_relative "../lib/dessert"

describe JellyBean do
  describe "has properties" do
    it "should have a flavor" do
      dessert = JellyBean.new "green jelly", 5, "mint"
      dessert.flavor.should == "mint"

    end
  end
  describe "#delicious" do
    it "should return false for 'Black Licorice'" do
      dessert = JellyBean.new "Black Licorice", 5, "Black Licorice"
      dessert.delicious?.should be_false
    end
    it "should return true for 'mint'" do
      dessert = JellyBean.new "green jelly", 5, "mint"
      dessert.delicious?.should be_true
    end
  end
end

describe Dessert do
  describe "has properties" do
    it "should have a name" do
      dessert = Dessert.new
      dessert.name = "ice cream"
      dessert.name.should == "ice cream"
    end
    it "should have calories" do
      dessert = Dessert.new
      dessert.calories = 10.2
      dessert.calories.should == 10.2

    end
  end
  describe "#delicious?" do
    it "should always be delicious" do
      dessert = Dessert.new
      dessert.delicious?.should be_true
    end
  end
  describe "#healthy?" do
    it "should return true to 'Fruit Salad'" do
      dessert = Dessert.new 'Fruit Salad', 10
      dessert.healthy?.should be_true
    end
    it "should return false to 'chocolate cake with icing'" do
      dessert = Dessert.new 'chocolate cake with icing', 250
      dessert.healthy?.should be_false
    end
  end
end