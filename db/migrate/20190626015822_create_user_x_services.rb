class CreateUserXServices < ActiveRecord::Migration[5.2]
  def change
    create_table :user_x_services do |t|
      t.string :name
      t.string :email
      t.string :service
      t.date :servicedate
      t.text :message

      t.timestamps
    end
  end
end
