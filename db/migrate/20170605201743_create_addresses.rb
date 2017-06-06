class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :street_name
      t.string :zip
      t.string :city
      t.string :state
      t.belongs_to :location

      t.timestamps
    end
  end
end
