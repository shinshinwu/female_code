class CompanyStaffStat < ActiveRecord::Base
  belongs_to :company
  belongs_to :user

  scope :approved, -> { where(is_approved: true) }
  scope :unapproved, -> { where(is_approved: false) }

  def is_approved?
    is_approved
  end
end