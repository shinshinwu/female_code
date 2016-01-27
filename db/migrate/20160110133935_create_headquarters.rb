class CreateHeadquarters < ActiveRecord::Migration
  def change
    create_table :headquarters do |t|
      t.string :city
      t.string :state
      t.string :country,           null: false, default: 'US'
    end

  end
end
