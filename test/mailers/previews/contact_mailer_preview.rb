# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview
  def contact_email
    mail = ContactMailer.contact_email("test@email.com","Test Name", "1234567890", @message = "Test message")
      assert_equal ['info@mymusicreview'], mail.to
      assert_equal ['info@mymusicreview'], mail.from
  end
end
