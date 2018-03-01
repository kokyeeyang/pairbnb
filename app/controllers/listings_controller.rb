class ListingsController < ApplicationController
	def index
		@listings = Listing.all
		@listings = Listing.order(:city).page params[:page]
	end

	def new
		@listing = Listing.new
	end 
 
	def create
		@listing = current_user.listings.new(listing_params)
		if params[:swimming_pool]
			@listing.amenities << "Swimming Pool"
		end

		if params[:bathroom]
			@listing.amenities << "Bathroom"
		end

		if params[:kitchen]
			@listing.amenities << "Kitchen"
		end

		if params[:gym]
			@listing.amenities << "Gym"
		end

		if @listing.save 
			redirect_to listings_path
		else 
			render template: "listings/new"
		end

	end

	def edit
		@listing = Listing.find(params[:id])

	end

	def update
		@listing = Listing.find(params[:id])
		@listing.update(listing_params)
		if @listing.save
			redirect_to listings_path
		end
	end

	def destroy
		@listing = Listing.find(params[:id])
		if @listing.user_id == current_user.id 
			flash[:success] = "Your listing has been deleted"
		@listing = Listing.delete(params[:id])
		redirect_to listings_path 
		else
		flash[:notice] = "you are not allowed to perform this action."
		redirect_to listings_path 
		end 
	end

  private 

  def listing_params
  	params.require(:listing).permit(:description, :city, :people, :image, :price)
  end 
end
