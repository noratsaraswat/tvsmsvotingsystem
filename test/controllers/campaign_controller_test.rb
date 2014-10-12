require 'test_helper'

class CampaignControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get candidate_lists" do
    get :candidate_lists
    assert_response :success
  end

end
