class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_tournament_winner tournaments
  winner = rps_game_winner(tournaments)
  winner
end

def valid_game?(game)
  player_1 = game[0]
  player_2 = game[1]
  if valid_strategy?(player_1) == false or valid_strategy?(player_2) == false
    raise NoSuchStrategyError
  end
end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  player_1 = game[0]
  player_2 = game[1]

  valid_game?(game)

  compare_strategies(player_1, player_2)
end

private
VALID_STRATEGIES = {"R"=> :rock, "P" => :paper, "S"=> :scissors}

def valid_strategy? player
  strategy = player.last
  strategy.instance_of?(String) && VALID_STRATEGIES.keys.include?(strategy.upcase)
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


private

def is_a_player? array
  valid_strategy?(array)
end

def tournament_winner tournament
  round_one = tournament.first
  round_two = tournament.last
  round_one_winner = rps_game_winner round_one
  round_two_winner = rps_game_winner round_two

  rps_game_winner([round_one_winner, round_two_winner])
end