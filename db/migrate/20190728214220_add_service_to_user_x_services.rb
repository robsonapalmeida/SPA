class AddServiceToUserXServices < ActiveRecord::Migration[5.2]
  def change
    add_reference :user_x_services, :service, foreign_key: true
  end
end
