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

  def test_find_player
    @team.find_player("Stanton")
    assert_equal("Stanton", @team.players[1])
  end

  def test_change_points__win
    @team.change_points(3)
    assert_equal(3, @team.change_points("win"))
  end

  def test_change_points__loss
    @team.change_points(-2)
    assert_equal(-2, @team.change_points("loss"))
  end



end