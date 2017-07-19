class ContactMailer < ApplicationMailer
  default from: 'sandy.junior64@gmail.com'

  def send_contact_email(email, message)
    @email = email
    @message = message
    mail(to: 'sandy.junior64@gmail.com', subject: 'New message from website') do |format|
      format.html { render 'send_contact_email' }
      format.text { render 'send_contact_email' }
    end
  end

end
