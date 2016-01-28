class CreateCompanyStaffStats < ActiveRecord::Migration
  def change
    create_table :company_staff_stats do |t|
      t.references :company,          null: false
      t.references :user,             null: false
      t.integer    :num_female_eng,   null: false
      t.integer    :num_eng,          null: false
      t.boolean    :is_approved,      default: false
      t.timestamps
    end
  end
end
