require('minitest/autorun')
require_relative('./team')

class TestTeam < MiniTest::Test
  def setup
    @team = Team.new("Hibernian", ["Blackley", "Stanton", "Schaedler"], "Collins", 0)
  end


  def test_add_player
    @team.add_player("Williams")
    assert_equal("Williams", @team.players.last)
  end

  # def test_player_here
  #   @team.player_here("Stanton")
  #   assert_equal("Stanton", @team.players)
  # end

  def test_add_points
    # @team.win_match(3)
    assert_equal(3, @team.change_points("win"))
  end

  def test_remove_points
    # @team.win_match(3)
    assert_equal(-2, @team.change_points("loss"))
  end



end