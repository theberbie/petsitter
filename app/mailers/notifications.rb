class Notifications < ActionMailer::Base
  default from: "no-reply@districtpawsee.com"

  def ad_created(ad)
    @ad = ad
    @ad_owner = @ad.user
    mail(to: '@ad_user',
    subject: 'Your ad was created')
  end
end
