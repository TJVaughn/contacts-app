class AddUserIdToRolladexes < ActiveRecord::Migration[6.1]
  def change
    add_column :rolladexes, :user_id, :integer
    add_index :rolladexes, :user_id
  end
end
