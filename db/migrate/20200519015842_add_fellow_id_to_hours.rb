class AddFellowIdToHours < ActiveRecord::Migration[6.0]
  def change
    add_reference :hours, :Fellow, null: false, foreign_key: true
  end
end
