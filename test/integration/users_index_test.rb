require 'test_helper'

class UsersIndexTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  def setup
    @user = users(:Jack)
    @non_admin = users(:Archer)
  end

  test "index as admin including pagination and delete links" do
    log_in_as(@user)
    get users_path
    assert_template 'users/index'
    User.paginate(page: 1).each do |user|
      assert_select 'a[href=?]', user_path(user), test: user.name
    end
  end
end
