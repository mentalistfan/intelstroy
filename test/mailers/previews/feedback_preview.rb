# Preview all emails at http://localhost:3000/rails/mailers/feedback
class FeedbackPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/feedback/myfeedback
  def myfeedback
    Feedback.myfeedback
  end

end
