class AddAccessToTheses < ActiveRecord::Migration[5.0]
  def change
    add_column :theses, :access, :integer, null: false, default: 0
  end
end
