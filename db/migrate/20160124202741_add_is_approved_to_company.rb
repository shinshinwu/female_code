class AddIsApprovedToCompany < ActiveRecord::Migration
  def up
    add_column :companies, :is_approved, :boolean, after: :company_size_tier_id, default: false
  end

  def down
    remove_column :companies, :is_approved
  end

end