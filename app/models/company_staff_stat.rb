class CompanyStaffStat < ActiveRecord::Base
  belongs_to :company
  belongs_to :user
end