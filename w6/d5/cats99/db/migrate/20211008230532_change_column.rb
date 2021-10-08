class ChangeColumn < ActiveRecord::Migration[5.2]
  def change
    change_column :cats, :sex, :string, limit: 1, null: false
  end
end
