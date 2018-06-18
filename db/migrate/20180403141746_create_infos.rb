class CreateInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :infos do |t|
      t.string :employeeno
      t.string :address
      t.string :phone
      t.string :nationalins
      t.string :nextofkin
      t.string :kinnumber
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :infos, [:user_id, :created_at]
  end
end
