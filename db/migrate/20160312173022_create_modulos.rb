class CreateModulos < ActiveRecord::Migration
  def change
    create_table :modulos do |t|
      t.string :nome
      t.string :cognome
      t.float :annolaurea
      t.date :datanascita
      t.string :luogo
      t.string :indirizzo
      t.integer :cap
      t.string :citta
      t.float :telefono
      t.float :cellulare
      t.string :email

      t.timestamps null: false
    end
  end
end
