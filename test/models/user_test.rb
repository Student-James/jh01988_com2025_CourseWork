require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test 'should save valid user' do
    user = User.new
    user.email = 'test@usermodeltest.com'
    user.password = 1234567890
    user.save
    assert user.valid?
  end

  test 'should not save invalid user' do
    user = User.new
    user.save
    refute user.valid?
  end

end
