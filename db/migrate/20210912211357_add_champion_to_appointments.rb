class AddChampionToAppointments < ActiveRecord::Migration[6.1]
  def change
    add_column :appointments, :champion, :string
  end
end
