class CreatePortfolios < ActiveRecord::Migration[5.0]
  def change
    create_table :portfolios do |t|
      t.references :user, foreign_key: true

      t.timestamps
    end

    add_index :portfolios, :user_id, unique: true,  name: 'users_uniq_field'
  end
end
