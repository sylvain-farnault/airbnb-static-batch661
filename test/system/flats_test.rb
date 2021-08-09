require "application_system_test_case"

class FlatsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit "/"

    assert_selector "h1", text: "Flats"
  end
  test "visiting flat with id 205" do
    visit "/flats/205"

    assert_selector "h1", text: "Splendide terrasse vue imprenable"
  end
end
