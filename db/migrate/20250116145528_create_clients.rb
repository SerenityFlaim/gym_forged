class CreateClients < ActiveRecord::Migration[8.0]
  def change
    create_table :clients do |t|
      t.string :fullname
      t.datetime :birthday
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
