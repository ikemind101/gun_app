class AddStatusToGuns < ActiveRecord::Migration[6.1]
  def change
    add_column :guns, :status, :integer
  end
end
