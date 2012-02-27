require_relative "../lib/rps_game_winner"

describe "Rock Paper Scissors game " do
  describe "number of players" do
    it "should raise error if not two" do
      lambda{ rps_game_winner [] }.should raise_error WrongNumberOfPlayersError
    end
  end
  describe "validates strategies" do
    context "valid ones" do
      it "rock beats scissors" do
         rps_game_winner([ [ "Armando", "R" ], [ "Dave", "S" ] ]).should == "Armando"
      end
      it "paper beats rock" do
        rps_game_winner([ [ "Armando", "R" ], [ "Dave", "P" ] ]).should == "Dave"
      end
      it "scissors beats paper" do
        rps_game_winner([ [ "Armando", "S" ], [ "Dave", "P" ] ]).should == "Armando"
      end
    end
    context "invalid one" do
      it "should raise error if invalid " do
        lambda{ rps_game_winner [ [ "Armando", "P" ], [ "Dave", "T" ] ] }.should raise_error NoSuchStrategyError
      end
    end

  end
end