class CreateSkillsUsers < ActiveRecord::Migration
  def change
    create_table :skills_users, id: false do |t|
      t.belongs_to :skill_id
      t.belongs_to :user_id
    end
  end
end