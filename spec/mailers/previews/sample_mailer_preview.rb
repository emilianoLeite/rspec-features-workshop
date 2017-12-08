# Preview all emails at http://localhost:3000/rails/mailers/sample_mailer
class SampleMailerPreview < ActionMailer::Preview
  def welcome_email
    SampleMailer.welcome_email(User.first)
  end
end
