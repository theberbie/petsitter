class Notifications < ActionMailer::Base
  default from: "no-reply@districtpawsee.com"

  def rating_added
    mail(to: 'ahbabousara@gmail.com',
    subject: 'Your ad was created')
  end
end
