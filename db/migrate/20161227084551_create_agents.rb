class CreateAgents < ActiveRecord::Migration[5.0]
  def change
    create_table :agents do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.string :country

      t.timestamps
    end
  end
end
