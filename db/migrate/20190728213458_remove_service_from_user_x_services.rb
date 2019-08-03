class RemoveServiceFromUserXServices < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_x_services, :service, :string
  end
end
