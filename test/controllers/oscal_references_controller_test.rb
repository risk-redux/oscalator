require "test_helper"

class OscalReferencesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get oscal_references_index_url
    assert_response :success
  end
end
