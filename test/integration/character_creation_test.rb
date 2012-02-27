require 'test_helper'

class CharacterCreationTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  javascript
  test "a new character" do
    visit '/characters'
    click_link "New"
    fill_in "Name", with: "Kestrel"
    fill_in "Level", with: "7"
    click_button "Save"
  
    success_message = "Character was successfully created."
    assert page.has_content?(success_message)
  end

end
