class AddDataNascitaToModulos < ActiveRecord::Migration
  def change
    add_column :modulos, :datanascita, :string
  end
end
