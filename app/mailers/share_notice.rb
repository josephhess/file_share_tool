class ShareNotice < ActionMailer::Base
  default from: "readysteadyco@gmail.com"

  def share_notify(share)
    @share = share
    @recipient = @share.recipient_email
    mail(
      :to => @share.recipient_email,
      :subject => "#{@share.name} has shared a file with you!"
      )
  end

  def download_notify(share)
    @share = share
    @recipient = @share.email
    mail(
      :to => @share.email,
      :subject => "#{@share.recipient_email} has visited your file share!"
      )
  end
end
