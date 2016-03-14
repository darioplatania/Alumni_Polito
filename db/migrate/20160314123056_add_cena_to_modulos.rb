class AddCenaToModulos < ActiveRecord::Migration
  def change
    add_column :modulos, :cena, :string
  end
end
