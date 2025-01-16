class CreateInstructors < ActiveRecord::Migration[8.0]
  def change
    create_table :instructors do |t|
      t.string :fullname
      t.integer :experience
      t.string :qualification

      t.timestamps
    end
  end
end
