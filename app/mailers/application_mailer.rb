class ApplicationMailer < ActionMailer::Base
  		default from: 'clients@poplify.com',
          :reply_to => 'clients@poplify.com'

  layout 'mailer'


  def add_sendgrid_headers(category,subject)
	    mailer = self.class.name
	    # args = Hash[ method(action).parameters.map(&:last).zip(args) ]
	    headers "X-SMTPAPI" => {
	      category:    [category],
	      subject:     subject,
	      unique_args: { environment: Rails.env }
	    }.to_json
  	end


end
