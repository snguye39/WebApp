class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.integer :name
      t.string :department
      t.int :number
      t.int :credit_hours

      t.timestamps
    end
  end
end
