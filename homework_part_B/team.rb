class Team
  attr_accessor :team, :players, :coach, :points
    
  def initialize(team, players, coach, points)
   
    @team = team
    @players = players
    @coach = coach
    @points = points
  end

  def add_player(new_player)
    players.push(new_player)
  end

  # def player_here(name)
  #   if @players.include?(name)
  #     return true
  #   else
  #     return
  #     false
  #   end
  # end

  # def player_here(name)
  #   for footballer in name
  #     if footballer == name
  #       return footballer
  #     end
  #   end
  # end

  def change_points(result)
    if result == "win"
      @points += 3
    elsif result == "loss"
      @points += -2
    end
  end

end