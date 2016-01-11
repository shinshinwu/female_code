class Company < ActiveRecord::Base
  has_many :users
  belongs_to :headquarter
  belongs_to :company_size_tier
end