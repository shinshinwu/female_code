class CreateCompanySizeTiers < ActiveRecord::Migration
  def change
    create_table :company_size_tiers do |t|
      t.string :range,              null: false
    end

  end
end
