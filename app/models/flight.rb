class Flight < ApplicationRecord
  validates :start_id, presence: true
  validates :finish_id, presence: true
  validates :start_datetime, presence: true
  validates :flight_duration, presence: true

  belongs_to :from_airport, :class_name => "Airport", :foreign_key => 'start_id'
  belongs_to :to_airport, :class_name => "Airport", :foreign_key => 'finish_id'
end
