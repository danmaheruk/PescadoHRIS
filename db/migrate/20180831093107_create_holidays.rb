class CreateHolidays < ActiveRecord::Migration[5.2]
  def change
    create_table :holidays do |t|
      t.string :reason
      t.date :startdate
      t.date :enddate
      t.boolean :approved

      t.timestamps
    end
  end
end
