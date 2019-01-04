class CreateBolsos < ActiveRecord::Migration[5.2]
  def change
    create_table :bolsos do |t|
      t.string :marca
      t.string :modelo
      t.integer :cantidad
      t.integer :precio

      t.timestamps
    end
  end
end
