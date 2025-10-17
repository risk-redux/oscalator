require "test_helper"

class OscalSchemasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get oscal_schemas_index_url
    assert_response :success
  end
end
