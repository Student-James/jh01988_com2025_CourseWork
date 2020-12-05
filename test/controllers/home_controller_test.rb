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

  test "should get contact" do
    get contact_url
    assert_response :success
    assert_template layout: 'application'
    assert_select 'title','My Music Review'
    assert_select 'h1','Contact Us'
    assert_select 'p','Fill out the form and we may be in touch.'
  # test our contact root returns the right infomration.
  end

  test "should post request contact but no email" do
    post request_contact_url

    assert_response :redirect
    assert_not_empty flash[:alert]
    assert_nil flash[:notice]
  end

  test "Should post request contact" do
    post request_contact_url , params: {name:"test name", email: "test@email.com", telephone: "1234567890", message: "test message" }
    assert_response :redirect
    assert_nil flash[:alert]
    assert_not_empty flash[:notice]
  end

end
