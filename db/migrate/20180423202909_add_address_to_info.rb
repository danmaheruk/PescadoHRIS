class AddAddressToInfo < ActiveRecord::Migration[5.1]
  def change
    add_column :infos, :address, :string
  end
end
