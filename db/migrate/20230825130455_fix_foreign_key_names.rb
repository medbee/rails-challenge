class FixForeignKeyNames < ActiveRecord::Migration[7.0]
  def change
    rename_column :user_contacts, :requesting_user_id_id, :requesting_user_id
    rename_column :user_contacts, :requested_user_id_id, :requested_user_id
  end
end
