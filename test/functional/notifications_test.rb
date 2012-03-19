require 'test_helper'

class NotificationsTest < ActionMailer::TestCase
  test "general" do
    mail = Notifications.general
    assert_equal "General", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
