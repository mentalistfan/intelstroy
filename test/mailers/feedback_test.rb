require 'test_helper'

class FeedbackTest < ActionMailer::TestCase
  test "myfeedback" do
    mail = Feedback.myfeedback
    assert_equal "Myfeedback", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
