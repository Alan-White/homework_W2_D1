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
# The method below also works
  # def find_player(name)
  #   if @players.include?(name)
  #     return true
  #   else
  #     return
  #     false
  #   end
  # end

  def find_player(name)
    for footballer in @players
      return footballer if @players.include?(name)
    end
  end

  def change_points(result)
    if result == "win"
      @points += 3
    elsif result == "loss"
      @points += -2
    end
  end

end