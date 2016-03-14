class AddCerimoniaToModulos < ActiveRecord::Migration
  def change
    add_column :modulos, :cerimonia, :string
  end
end
