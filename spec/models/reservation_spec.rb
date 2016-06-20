require 'rails_helper'

RSpec.describe Reservation, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  reservation = Reservation.create(name: "babybin", table: 4, guest: 5, time: Time.now)

  it "should validate presence" do
  	expect(reservation.name).to eq("babybin")
  	expect(reservation.table).to eq(4)
  	expect(reservation.guest).to eq(5)
  end

end
