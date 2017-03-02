class SavedlinksController < ApplicationController
	before_action :authenticate_user!

	def index
		@savedlinks = current_user.saved_links
	end

	def destroy
		@savedlink = SavedLink.find(params[:id])
		@savedlink.destroy
		flash[:notice] = 'Link deleted successfully'
		redirect_to '/savedlinks'
	end

end
