class WildlandHerdCreatePermissions < ActiveRecord::Migration
  def change
    create_table(:permissions) do |t|
      t.string :name, null: false, default: ''
      t.references :role
      t.string :permissible_type, default: nil
      t.integer :permissible_id
      t.boolean :can_create, default: false
      t.boolean :can_read, default: false
      t.boolean :can_update, default: false
      t.boolean :can_destroy, default: false
      t.timestamps null: false
    end
  end
end
