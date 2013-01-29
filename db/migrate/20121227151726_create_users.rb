class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :cpf
      t.string :gender
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
