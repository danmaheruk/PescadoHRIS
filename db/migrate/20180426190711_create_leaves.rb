class CreateLeaves < ActiveRecord::Migration[5.2]
  def change
    create_table :leaves do |t|
      t.string :reason
      t.date :startdate
      t.date :enddate
      t.boolean :approved

      t.timestamps
    end
  end
end
