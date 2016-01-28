class Company < ActiveRecord::Base
  has_many :company_staff_stats
  has_many :users, through: :company_staff_stats
  belongs_to :headquarter
  belongs_to :company_size_tier
end