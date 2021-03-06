class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string     :name,              null: false
      t.boolean    :is_public
      t.string     :url
      t.references :headquarter
      t.references :company_size_tier

      t.timestamps
    end

    add_index :companies, :name
  end
end
