class AddAccompagnatoriToModulos < ActiveRecord::Migration
  def change
    add_column :modulos, :accompagnatori, :string
  end
end
