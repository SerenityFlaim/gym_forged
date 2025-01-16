class CreatePersonalTrainings < ActiveRecord::Migration[8.0]
  def change
    create_table :personal_trainings do |t|
      t.references :client, null: false, foreign_key: true
      t.references :instructor, null: false, foreign_key: true
      t.integer :price
      t.integer :duration
      t.datetime :schedule

      t.timestamps
    end
  end
end
