class CreateLevels < ActiveRecord::Migration[5.0]
  def change
    create_table :levels do |t|
      t.string :leveltype

      t.timestamps
    end
  end
end
