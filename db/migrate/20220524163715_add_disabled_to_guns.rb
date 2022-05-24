class AddDisabledToGuns < ActiveRecord::Migration[6.1]
  def change
    add_column :guns, :disabled, :tinyint
  end
end
