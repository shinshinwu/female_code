class Company < ActiveRecord::Base
  has_many :company_staff_stats
  has_many :users, through: :company_staff_stats
  belongs_to :headquarter
  belongs_to :company_size_tier

  def number_of_female_eng
    company_staff_stats.approved.average(:num_female_eng).to_i
  end

  def number_of_male_eng
    number_of_eng - number_of_female_eng
  end

  def number_of_eng
    company_staff_stats.approved.average(:num_eng).to_i
  end

  def female_ratio
    number_of_female_eng / number_of_eng.to_f
  end

  def male_ratio
    number_of_male_eng / number_of_eng.to_f
  end

  def approved?
    company_staff_stats.approved.present?
  end

end