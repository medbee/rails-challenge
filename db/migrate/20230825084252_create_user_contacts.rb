class CreateUserContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :user_contacts do |t|
      t.references :requesting_user_id, null: false, foreign_key: { to_table: :users }
      t.references :requested_user_id, null: false, foreign_key: { to_table: :users }
      t.string :status

      t.timestamps
    end
  end
end
