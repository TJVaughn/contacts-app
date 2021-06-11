class CreateRolladexes < ActiveRecord::Migration[6.1]
  def change
    create_table :rolladexes do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :telephone
      t.string :twitter

      t.timestamps
    end
  end
end
