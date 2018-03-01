class ReservationsController < ApplicationController
	# before_action :authenticate_user!
	def index
		@reservations = Reservation.all
		@new_reservation = Reservation.new

	end

	def new
		@listing = Listing.find(params[:listing_id])
		@reservation = Reservation.new
		
	end

	def create 
		@listing = Listing.find(params[:listing_id])

		@reservation = current_user.reservations.new(reservation_params)

		@reservation.listing_id = params[:listing_id]

		 if @reservation.save
			host = User.find(@listing.user_id)
			ReservationMailer.booking_email(current_user, host, @reservation.id).deliver_later
			redirect_to listing_reservation_path(@listing, @reservation) 
			
		else 
			redirect_to action: 'new'
		end
	end

	def edit
	end

	def show
	end

	def update
	end

	def destroy
	end

	private
		def reservation_params
			params.require(:reservation).permit(:start_date, :end_date, :price, :total, :room_id, :name, :listing_id, :reservation_id)
		end
		
end