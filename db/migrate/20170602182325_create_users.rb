class CreateUsers < ActiveRecord::Migration[5.0]
  def up
    create_table :users do |t|

      t.string  "email", :null => false
      t.string  "full_name", :null => false
      t.string  "password_digest", :null => false
      t.boolean "is_validated", :default => false
      t.boolean "is_admin", :default => false

      t.timestamps
      #t.datetime "created_at"
      #t.datetime "updated_at"
    end
  end

  def down
    drop_table :users
  end

end
