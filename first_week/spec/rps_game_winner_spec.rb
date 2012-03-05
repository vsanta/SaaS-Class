require "rubygems"
require_relative "../lib/rps_game_winner"

describe "Rock Paper Scissors game " do
  #describe "tournament" do
  #    rps_tournament_winner([
  #                               [
  #                                [ ["Armando", "P"], ["Dave", "S"] ],
  #                                [ ["Richard", "R "],  ["Michael", "S"] ],
  #                                ],
  #                            [
  #                              [ ["Allen", "S"], ["Omer", "P"] ],
  #                              [ ["David E.", "R"], ["Richard X.", "P"] ]
  #                            ]
  #                          ]).should == ["Richard", "R"]
  #end
  describe "number of players" do
    it "should raise error if not two" do
      lambda{ rps_game_winner [] }.should raise_error WrongNumberOfPlayersError
    end
  end
  describe "validates strategies" do
    context "tied" do
      it "should return first player as a winner" do
        rps_game_winner([ [ "Armando", "R" ], [ "Dave", "R" ] ]).should == ["Armando", "R"]
      end
    end
    context "valid ones" do
      it "rock beats scissors" do
         rps_game_winner([ [ "Armando", "R" ], [ "Dave", "S" ] ]).should == [ "Armando", "R" ]
         rps_game_winner([ [ "Armando", "S" ], [ "Dave", "R" ] ]).should ==[ "Dave", "R" ]
      end
      it "paper beats rock" do
        rps_game_winner([ [ "Armando", "R" ], [ "Dave", "P" ] ]).should == [ "Dave", "P" ]
        rps_game_winner([ [ "Armando", "P" ], [ "Dave", "R" ] ]).should == [ "Armando", "P" ]
      end
      it "scissors beats paper" do
        rps_game_winner([ [ "Armando", "S" ], [ "Dave", "P" ] ]).should == [ "Armando", "S" ]
        rps_game_winner([ [ "Armando", "P" ], [ "Dave", "S" ] ]).should == [ "Dave", "S" ]
      end
    end
    context "invalid one" do
      it "should raise error if invalid " do
        lambda{ rps_game_winner [ [ "Armando", "P" ], [ "Dave", "T" ] ] }.should raise_error NoSuchStrategyError
      end
    end

  end
end