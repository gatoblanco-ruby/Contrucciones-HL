class CreatePipas < ActiveRecord::Migration[6.0]
  def change
    create_table :pipas do |t|
      t.string :nombre
      t.integer :numero
      t.integer :pepe

      t.timestamps
    end
  end
end
