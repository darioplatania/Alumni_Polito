class SampleNameChangeColumnType < ActiveRecord::Migration
  def change
    change_column(:modulos, :telefono, :string)
    change_column(:modulos, :cellulare, :string)
  end
end
