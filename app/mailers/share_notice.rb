class ShareNotice < ActionMailer::Base
  default from: "readysteadyco@gmail.com"

  def share_notify(share)
    @share = share
    @recipient = @share.recipient_email
    mail(
      :to => @share.recipient_email,
      :subject => "Someone has shared a file with you!"
      )
  end
end
