class Feedback < ActionMailer::Base
  default from: "Сайт Интелстрой <intelstroy.com>"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.feedback.myfeedback.subject
  #
  def myfeedback(name, tel, mess)
    @name = name
    @tel = tel
    @mess = mess
    @t = Time.now
    
    mail to: "trishin.jenya@yandex.ru", subject: 'Test'
  end
end
