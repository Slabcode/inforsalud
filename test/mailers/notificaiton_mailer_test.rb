require 'test_helper'

class NotificaitonMailerTest < ActionMailer::TestCase
  test "admin_pass" do
    mail = NotificaitonMailer.admin_pass
    assert_equal "Admin pass", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
