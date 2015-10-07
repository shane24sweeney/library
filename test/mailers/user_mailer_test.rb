require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "book_available_notification" do
    mail = UserMailer.book_available_notification
    assert_equal "Book available notification", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
