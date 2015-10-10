class SignupMailer < ActionMailer::Base
  default from: "from@example.com"

  def signup_email(email)
  	binding.pry
    mail(to: email, subject: 'Sample Email')
  end
end
