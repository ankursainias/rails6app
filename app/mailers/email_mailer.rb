class EmailMailer < ApplicationMailer

  def welcome(name)
    @greeting = "Hi #{name}"
    add_sendgrid_headers("Testing","Testing email")
    mail to: "ankur@poplify.com" , subject: "Test Card"
  end
end