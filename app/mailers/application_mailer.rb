class ApplicationMailer < ActionMailer::Base
  default to: "info@mymusicreview", from: 'info@mymusicreview.com'
  layout 'mailer'
end
