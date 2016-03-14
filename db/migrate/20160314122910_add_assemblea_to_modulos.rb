class AddAssembleaToModulos < ActiveRecord::Migration
  def change
    add_column :modulos, :assemblea, :string
  end
end
