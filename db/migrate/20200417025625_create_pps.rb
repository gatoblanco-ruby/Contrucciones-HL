class CreatePps < ActiveRecord::Migration[6.0]
  def change
    create_table :pps do |t|
      t.integer :horas
      t.integer :worker_id
      t.string :l

      t.timestamps
    end
  end
end
