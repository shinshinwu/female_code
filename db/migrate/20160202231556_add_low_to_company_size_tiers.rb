class AddLowToCompanySizeTiers < ActiveRecord::Migration
  def up
    add_column :company_size_tiers, :low, :integer
    add_column :company_size_tiers, :high, :integer
  end

  def down
    remove_column :thoughts, :low
    remove_column :thoughts, :high
  end
end
