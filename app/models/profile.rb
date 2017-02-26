class Profile < ActiveRecord::Base
  belongs_to :user
  validate :name_exists, :gender_pc, :boy_named

  def name_exists
  	if first_name.nil? 
  		if last_name.nil?
  			errors.add(:last_name, "need a name")
  		end
  	end
  end

  def gender_pc
  	if gender != "male" && gender != "female"
  		errors.add(:gender, "this program is not woke yet")
  	end
  end
    def boy_named
    	if gender == "male" && first_name == "Sue"
	  		errors.add( :first_name, "come on")
    	end
	end

	def self.get_all_profiles(min, max)
		Profile.where("birth_year between :min_year AND :max_year", min_year: min, max_year: max).order(:birth_year).to_a
	end
end
