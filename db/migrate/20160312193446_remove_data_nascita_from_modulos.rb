class RemoveDataNascitaFromModulos < ActiveRecord::Migration
  def change
    remove_column :modulos, :datanascita, :float
  end
end
