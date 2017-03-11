class CreateTeaches < ActiveRecord::Migration[5.0]
  def change
    create_table :teaches do |t|
    t.text     "title"
    t.text     "description"
    t.datetime "created_at"    
    t.datetime "updated_at"      
    t.integer  "required_amount"
    t.integer  "donated_amount"

      t.timestamps
    end
  end
end
