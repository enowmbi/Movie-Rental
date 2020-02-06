class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com',subject: 'New subject',cc: 'admin@gcmega.net',bcc: 'info@divcon.net'
  layout 'mailer'
end
