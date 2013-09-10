class User < ActiveRecord::Base
  has_many :skillsets
  has_many :skills, through: :skillsets

  # eg. zee.set_proficiency_for(beard_growing, 900)
  def set_proficiency_for(skill, value)
    skillset_for_skill = self.skillsets.find_by_skill_id(skill.id)
    skillset_for_skill.update_attribute(:proficiency, value)
    skillset_for_skill.save
  end

  def proficiency_for(skill)
    skillset = Skillset.find_by_skill_id(skill.id)
    skillset.proficiency
  end


end
