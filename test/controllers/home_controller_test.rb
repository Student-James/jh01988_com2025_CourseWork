require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url

    assert_select 'title','My Music Review'
    assert_select 'h1','My Music Review'
    assert_select 'p','Welcome to My Music Review','This website is deadicated to allowing users to upload album and tracking listing. They are also able to post their own reviews of each track.'
    #Testing that the home page is retrieved through the controller.
    assert_response :success
  end

end
