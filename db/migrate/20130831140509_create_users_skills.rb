class CreateUsersSkills < ActiveRecord::Migration
  def change
    create_table :users_skills, id: false do |t|
      t.belongs_to :user_id
      t.belongs_to :skill_id
  end
end
end
