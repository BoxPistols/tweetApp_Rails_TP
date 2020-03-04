class AddColumnToUser < ActiveRecord::Migration[6.0]
  def change
    # ========== 追記 ==========
    add_column :users, :name, :string, null: false, default: '', limit: 50
    add_column :users, :username, :string, null: false, default: '', limit: 15, unique: true
  end
end
