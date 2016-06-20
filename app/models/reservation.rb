class Reservation < ActiveRecord::Base
	validates :name, :table, :guest, :time, presence: true
end
