require("minitest/rg")
require("minitest/autorun")

require_relative("../pub")

class PubTest < MiniTest::Test

  def setup
    @pub = Pub.new("Black Horse", 1000, 10)
  end

  def test_can_create_pub
    assert_equal(Pub, @pub.class())
  end

end
