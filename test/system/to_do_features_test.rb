require "application_system_test_case"

class ToDoFeaturesTest < ApplicationSystemTestCase
  setup do
    @to_do_feature = to_do_features(:one)
  end

  test "visiting the index" do
    visit to_do_features_url
    assert_selector "h1", text: "To do features"
  end

  test "should create to do feature" do
    visit to_do_features_url
    click_on "New to do feature"

    fill_in "Description", with: @to_do_feature.description
    fill_in "Name", with: @to_do_feature.name
    fill_in "Status", with: @to_do_feature.status
    fill_in "Todoid", with: @to_do_feature.todoId
    click_on "Create To do feature"

    assert_text "To do feature was successfully created"
    click_on "Back"
  end

  test "should update To do feature" do
    visit to_do_feature_url(@to_do_feature)
    click_on "Edit this to do feature", match: :first

    fill_in "Description", with: @to_do_feature.description
    fill_in "Name", with: @to_do_feature.name
    fill_in "Status", with: @to_do_feature.status
    fill_in "Todoid", with: @to_do_feature.todoId
    click_on "Update To do feature"

    assert_text "To do feature was successfully updated"
    click_on "Back"
  end

  test "should destroy To do feature" do
    visit to_do_feature_url(@to_do_feature)
    click_on "Destroy this to do feature", match: :first

    assert_text "To do feature was successfully destroyed"
  end
end
