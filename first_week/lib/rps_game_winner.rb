class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end


def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  player_1 = game[0]
  player_2 = game[1]

  if valid_strategy?(player_1) == false or  valid_strategy?(player_2) == false
    raise  NoSuchStrategyError
  end

  compare_strategies(player_1, player_2)
end

private
VALID_STRATEGIES = {"R"=> :rock, "P" => :paper, "S"=> :scissors}

def valid_strategy? player
  VALID_STRATEGIES.keys.include? player[1].upcase
end

def compare_strategies player_one, player_two
  case VALID_STRATEGIES[player_one[1]]
    when :rock
      if VALID_STRATEGIES[player_two[1]] == :scissors
        return  player_one
      end
      if  VALID_STRATEGIES[player_two[1]] == :paper
        return player_two
      end
      if  VALID_STRATEGIES[player_two[1]] == :rock
        return player_one
      end

    when :paper
      if VALID_STRATEGIES[player_two[1]] == :scissors
        return  player_two
      end
      if  VALID_STRATEGIES[player_two[1]] == :rock
        return player_one
      end
      if  VALID_STRATEGIES[player_two[1]] == :paper
        return player_one
      end
    when :scissors
      if VALID_STRATEGIES[player_two[1]] == :paper
        return  player_one
      end
      if  VALID_STRATEGIES[player_two[1]] == :rock
        return player_two
      end
      if  VALID_STRATEGIES[player_two[1]] == :scissors
        return player_one
      end
  end

end