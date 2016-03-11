class Contact < MailForm::Base
  attribute :nome,                       :validate => true
  attribute :cognome,                    :validate => true
  attribute :annodilaurea,               :validate => true
  #data_attribute.strftime("%m/%d/%Y"),   :validate => true  #=> "11/19/2007"
  attribute :indirizzo,                  :validate => true
  attribute :cap,                        :validate => true
  attribute :citta,                      :validate => true
  attribute :telefono,                   :validate => true
  attribute :cellulare,                  :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message


  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "My Contact Form",
      :to => "dariopl91@gmail.com",
      :from => %("#{nome}" <#{email}>)
    }
  end
end
