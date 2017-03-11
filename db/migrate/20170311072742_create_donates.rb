class CreateDonates < ActiveRecord::Migration[5.0]
  def change
    create_table :donates do |t|
    	t.string :name
    	t.string :Country
    	t.text :email
    	t.integer :amount
    	t.text :comment


      t.timestamps
    end
  end
end
