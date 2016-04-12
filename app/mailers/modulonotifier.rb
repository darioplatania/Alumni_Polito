class Modulonotifier < ApplicationMailer
  def invio(modulo)
    @modulo = modulo
    @greeting = "Distinti Saluti"
    if Rails.env.production?
      mail to: "polito.alumni@gmail.com", subject: 'Nuovo Modulo Adesione Compilato'
    else
      mail to: "dariopl91@gmail.com", subject: 'Nuovo Modulo Adesione Compilato'
    end
  end
end
