class AddColumnsToInfo < ActiveRecord::Migration[5.2]
  def change
    add_column :infos, :contact, :string
    add_column :infos, :nextofkin, :string
    add_column :infos, :kinnumber, :string
  end
end
