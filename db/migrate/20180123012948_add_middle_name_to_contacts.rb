class AddMiddleNameToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :MiddleName, :string
  end
end
