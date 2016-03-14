class Modulo < ActiveRecord::Base

  validates :nome, presence: true,numericality: false
  validates :cognome, presence: true,numericality: false
  validates :annolaurea, presence: true
  validates :luogo, presence: true
  validates :indirizzo, presence: true
  validates :cap, presence: true
  validates :citta, presence: true
  validates :telefono, presence: true,allow_blank: true, numericality: true,length: {minimum: 8, maximum: 12}
  validates :cellulare, presence: true,allow_blank: true, numericality: true,length: {minimum: 8, maximum: 12}
  validate :telefono_or_cellulare
  validates :assemblea, presence: true
  validates :cerimonia, presence: true
  validates :accompagnatori, presence: true
  validates :cena, presence: true
  validates :i3p, presence: true

  VALID_DATADINASCITA_REGEX = /\A(?:(?:([0-2][1-9]|[12]0|19)[\/\\\-. ]?(0[1-9]|1[0-2])|(29|30)[\/\\\-. ]?(0[13-9]|1[0-2])|(31)[\/\\\-. ]?(0[13578]|1[02]))[\/\\\-. ]?((?:19|20)[0-9]{2})|(29)[\/\\\-. ]?(02)[\/\\\-. ]?(19(?:[0][48]|[2468][048]|[13579][26])|20(?:[02468][048]|[13579][26])))\z/
  validates :datanascita, presence: true, format: { with: VALID_DATADINASCITA_REGEX }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },
              format: { with: VALID_EMAIL_REGEX }

  private

  def telefono_or_cellulare
    if ( telefono.blank? && cellulare.blank? )
         errors.add(:base, "Devi inserire almeno un campo tra Telefono e Cellulare")
    end
  end

end
