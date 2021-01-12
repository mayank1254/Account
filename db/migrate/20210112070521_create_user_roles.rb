class CreateUserRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :user_roles do |t|
    	t.integer :user_id
  		t.integer :role_id

      t.timestamps
      t.index ["role_id"], name: "index_user_roles_on_role_id"
			t.index ["user_id"], name: "index_user_roles_on_user_id"
    end
  end
end
