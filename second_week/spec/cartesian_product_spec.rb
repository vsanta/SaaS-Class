require_relative "../lib/cartesian_product"

describe CartesianProduct do
  let :c do
   CartesianProduct.new([:a,:b], [4,5])
  end
  it "should return the cartesian product" do
    c.to_a.should == [:a,:b].product([4,5])
  end
  it "should return first comb" do
   c.to_a.should include([:a, 4])
  end
  it "artesianProduct should work for other examples for 2x2" do
    c= CartesianProduct.new([:a,11], [4,13])
    c.to_a.should include([11, 13])
  end

  it " CartesianProduct should work for 3x3 and 4x4 [40 points]" do
     c= CartesianProduct.new([:a,11,2,1], [4,13,3,6])
     c.to_a.should include([1, 4])
  end
end