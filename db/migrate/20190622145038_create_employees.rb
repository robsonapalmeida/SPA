class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.date :birthday
      t.float :salary
      t.string :shift
      t.string :department
      t.date :hiredate
      t.string :nickname
      t.binary :photo

      t.timestamps
    end
  end
end
