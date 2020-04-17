class CreateWorkers < ActiveRecord::Migration[6.0]
  def change
    create_table :workers do |t|
      t.integer :cedula
      t.string :name
      t.string :eps

      t.timestamps
    end
  end
end
