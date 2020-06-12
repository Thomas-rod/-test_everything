require 'test_helper'

class CharactersControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get characters_create_url
    assert_response :success
  end

end
