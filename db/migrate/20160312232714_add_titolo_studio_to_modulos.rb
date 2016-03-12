class AddTitoloStudioToModulos < ActiveRecord::Migration
  def change
    add_column :modulos, :titolostudio, :string
  end
end
