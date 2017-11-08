require 'test_helper'

class UserMailerTest < ActionMailer::TestCase

  test "account_activation" do
    user = users(:Jack)
    user.activation_token = User.new_token
    mail = UserMailer.account_activation(user)
    assert_equal "Account Activation", mail.subject
    assert_equal ["jack.horner@pescado.co.uk"], mail.to
    assert_equal ["Noreply@pescado.co.uk"], mail.from
    assert_match user.name,               mail.body.encoded
    assert_match user.activation_token,   mail.body.encoded
    assert_match CGI::escape(user.email), mail.body.encoded

  end

  test "password_reset" do
    user = users(:Jack)
    user.reset_token = User.new_token
    mail = UserMailer.password_reset
    assert_equal "Password Reset", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["Noreply@pescado.co.uk"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
