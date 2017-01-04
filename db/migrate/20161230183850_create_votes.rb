class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.integer :user_id, null: false
      t.integer :pokemon_id, null: false

      t.timestamps
    end
  end
end
