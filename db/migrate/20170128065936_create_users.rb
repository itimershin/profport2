class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email, limit: 50, null: false
      t.string :password, limit: 20, null: false

      t.timestamps
    end
  end
end
