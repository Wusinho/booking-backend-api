class AddRoleToAppointments < ActiveRecord::Migration[6.1]
  def change
    add_column :appointments, :role, :string
  end
end
