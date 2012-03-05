require_relative "../lib/foo"
describe Foo do
    it "should store change history of a property" do
      f = Foo.new
      f.bar = 3
      f.bar = :wowzo
      f.bar = 'boo!'
      f.bar_history.should == [nil, 3, :wowzo, 'boo!']
    end
end