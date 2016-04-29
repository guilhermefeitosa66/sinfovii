require 'test_helper'

class ApresentacaoControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
