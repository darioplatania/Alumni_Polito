class Modulonotifier < ApplicationMailer
  def invio(modulo)
    @modulo = modulo
    @greeting = "Distinti Saluti"
    mail to: "dariopl91@gmail.com", subject: 'Nuovo Modulo Adesione Compilato'
  end
end
