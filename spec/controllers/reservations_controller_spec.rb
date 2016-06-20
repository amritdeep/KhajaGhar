
require 'rails_helper'

RSpec.describe ReservationsController, :type => :controller do

	it "should visit index page" do
		get :index
		expect(response).to be_success
		expect(response).to render_template :index
	end

	it "should make reservation" do
		get :new
		expect(response).to be_success
		expect(response).to render_template(:new)
	end

	it "should show reservation" do
		reservation = Reservation.create(name: "babybin", table: 4, guest: 5, time: Time.now)

		get :show, { id: reservation.id }

		expect(response).to be_success
		expect(response).to render_template(:show)
		expect(reservation.id).to eql(reservation.id)
	end

end