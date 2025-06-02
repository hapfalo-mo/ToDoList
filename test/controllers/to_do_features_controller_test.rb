require "test_helper"

class ToDoFeaturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @to_do_feature = to_do_features(:one)
  end

  test "should get index" do
    get to_do_features_url
    assert_response :success
  end

  test "should get new" do
    get new_to_do_feature_url
    assert_response :success
  end

  test "should create to_do_feature" do
    assert_difference("ToDoFeature.count") do
      post to_do_features_url, params: { to_do_feature: { description: @to_do_feature.description, name: @to_do_feature.name, status: @to_do_feature.status, todoId: @to_do_feature.todoId } }
    end

    assert_redirected_to to_do_feature_url(ToDoFeature.last)
  end

  test "should show to_do_feature" do
    get to_do_feature_url(@to_do_feature)
    assert_response :success
  end

  test "should get edit" do
    get edit_to_do_feature_url(@to_do_feature)
    assert_response :success
  end

  test "should update to_do_feature" do
    patch to_do_feature_url(@to_do_feature), params: { to_do_feature: { description: @to_do_feature.description, name: @to_do_feature.name, status: @to_do_feature.status, todoId: @to_do_feature.todoId } }
    assert_redirected_to to_do_feature_url(@to_do_feature)
  end

  test "should destroy to_do_feature" do
    assert_difference("ToDoFeature.count", -1) do
      delete to_do_feature_url(@to_do_feature)
    end

    assert_redirected_to to_do_features_url
  end
end
