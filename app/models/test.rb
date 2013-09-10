  def set_proficiency_for(skill, prof_score)
     user_prof = self.skillsets.find_by_skill_id(skill.id)
     user_prof.update_attributes(proficiency: prof_score)
  end

  def proficiency_for(skill)
     user_prof = self.skillsets.find_by_skill_id(skill.id)
     puts "user_prof.proficiency = #{user_prof.proficiency}"
     user_prof.proficiency
  end


  def user_with_proficiency(prof_score)
    skillset_by_proficiency = Skillset.find_by_proficiency(prof_score)
    user_id_with_skillset_by_prof = skillset_by_proficiency.user_id
    User.find_by_id(user_id_with_skillset_by_prof)
  end