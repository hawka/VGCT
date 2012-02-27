require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "empty username" do
    attrs = { username: "", truename: "John Doe" }
    user = Player.new(attrs)
    debugger;1
    assert !user.valid?
  end
end
