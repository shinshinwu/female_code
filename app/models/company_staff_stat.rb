class CompanyStaffStat < ActiveRecord::Base
  belongs_to :company
  belongs_to :user

  scope :approved, -> { where(is_approved: true) }

  def is_approved?
    is_approved
  end
end