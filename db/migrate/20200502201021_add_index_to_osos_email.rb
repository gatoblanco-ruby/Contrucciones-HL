class AddIndexToOsosEmail < ActiveRecord::Migration[6.0]
  def change
    add_index :osos, :email, unique: true
  end
end
