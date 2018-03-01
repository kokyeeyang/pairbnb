class UsersController < Clearance::UsersController
	def show
		@user = User.find(params[:id])
		render template: "users/show"
	end

end