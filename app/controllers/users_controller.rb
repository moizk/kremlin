class UsersController < ApplicationController
  authorize_resource

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

end