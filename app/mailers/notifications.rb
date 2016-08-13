class Notifications < ActionMailer::Base
  default from: "no-reply@districtpawsee.com"

  def ad_created
    mail(to: 'ahbabousara@gmail.com',
    subject: 'Your ad was created')
  end
end
