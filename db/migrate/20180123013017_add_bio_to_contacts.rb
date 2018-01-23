class AddBioToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :Bio, :text
  end
end
