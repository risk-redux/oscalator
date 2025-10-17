require "test_helper"

class OscalLayersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get oscal_layers_index_url
    assert_response :success
  end
end
