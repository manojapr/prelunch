class SignupMailer < ActionMailer::Base
  default from: "from@example.com"

  def signup_email(email)
    mail(to: email, subject: 'Sample Email')
  end
end
