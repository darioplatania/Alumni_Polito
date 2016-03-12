class ChangeDataNascitaInModulos < ActiveRecord::Migration
  def change
     change_column :modulos, :datanascita, :string
  end
end
