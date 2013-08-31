class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.belongs_to :user
      t.string :name
      t.string :context

      t.timestamps
    end
  end
end
