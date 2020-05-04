class AddPasswordDigestToOsos < ActiveRecord::Migration[6.0]
  def change
    add_column :osos, :password_digest, :string
  end
end
