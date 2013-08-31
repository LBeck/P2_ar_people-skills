class CreateUsersParts < ActiveRecord::Migration
  def change
    create_table :users_parts, id: false do |t|
      t.integer :user_id
      t.integer :part_id
    end
  end
end
