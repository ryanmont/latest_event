class Event < ApplicationRecord

	belongs_to :user
	has_many :attendees, dependent: :destroy

validates_presence_of :title, :summary, :location, :event_date, :approved_ids 


end
