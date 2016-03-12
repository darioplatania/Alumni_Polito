class ChangeAnnoLaureaInModulos < ActiveRecord::Migration
  def change
     change_column :modulos, :annolaurea, :string
  end
end
