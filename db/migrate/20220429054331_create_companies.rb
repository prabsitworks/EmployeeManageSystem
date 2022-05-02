class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address_line_1
      t.string :address_line_2
      t.string :area
      t.string :city
      t.string :website
      t.string :country_code
      t.string :contact_number
      t.string :email

      t.timestamps
    end
  end
end
