class Headquarter < ActiveRecord::Base
  has_many :companies

  def location_string
    if city && state
      return "#{city}, #{state} #{country}"
    elsif state
      return "#{state}, #{country}"
    else
      return CS.get[country.to_sym]
    end
  end

  def average_female_ratio
    all_ratio = companies.map(&:female_ratio)
    return all_ratio.inject(0.0) { |sum, el| sum + el } / all_ratio.size
  end
end