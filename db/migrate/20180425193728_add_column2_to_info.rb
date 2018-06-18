class AddColumn2ToInfo < ActiveRecord::Migration[5.2]
  def change
    add_column :infos, :ninumber, :string
    add_column :infos, :carman, :string
    add_column :infos, :carmodel, :string
    add_column :infos, :licencep, :string
    add_column :infos, :adaptions, :string
  end
end
