class Flight < ApplicationRecord
  validates :start_id, presence: true
  validates :finish_id, presence: true
  validates :departure_date, presence: true
  validates :departure_time, presence: true
  validates :flight_duration, presence: true

  belongs_to :from_airport, :class_name => "Airport", :foreign_key => 'start_id'
  belongs_to :to_airport, :class_name => "Airport", :foreign_key => 'finish_id'
end
