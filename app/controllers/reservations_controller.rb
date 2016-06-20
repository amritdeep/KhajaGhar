class ReservationsController < ApplicationController
  
  def new
  	@reservations = Reservation.new
  end

  def create
  	@reservations = Reservation.new(reservation_params)

  	if @reservations.save
  		flash[:success] = "Successfully Make Reservation"
  		redirect_to reservation_path(@reservations)
  	else
  		render "new"
  	end

  end

  def show
  end

  private

  def reservation_params
  	params.require(:reservation).permit(:name,:table, :guest, :time)
  	
  end

end
