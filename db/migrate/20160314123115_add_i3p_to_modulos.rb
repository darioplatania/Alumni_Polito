class AddI3pToModulos < ActiveRecord::Migration
  def change
    add_column :modulos, :i3p, :string
  end
end
