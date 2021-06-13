class ChangeDuration < ActiveRecord::Migration[6.1]
  def change
    change_column :flights, :flight_duration, :integer
  end
end
