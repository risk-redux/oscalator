require "test_helper"

class OscalModelsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get oscal_models_index_url
    assert_response :success
  end
end
