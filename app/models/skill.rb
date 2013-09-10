class Skill < ActiveRecord::Base
  has_many :skillsets
  has_many :users, through: :skillsets
  validates :name, presence: true, uniqueness: true

# beard_skills = Skill.find_by_name("Beard Growing").user_with_proficiency(900) == zee
  def user_with_proficiency(value)
    skillset = Skillset.find_by_proficiency(value)
    user_id = skillset.user_id
    user_name = User.find(user_id)
    user_name
  end

end
