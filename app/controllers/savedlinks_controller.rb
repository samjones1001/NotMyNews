class SavedlinksController < ApplicationController
	before_action :authenticate_user!

	def index
		@savedlinks = current_user.saved_links
	end

	def create
		savedlink = SavedLink.where(user_id: current_user, title: params[:Title]).first_or_create do |link| 
			link.title = params[:Title]
			link.subtitle = params[:Description]
			link.url = params[:Url]
			link.imageurl = params[:Image]
			link.source = params[:Source]
			end
      flash[:success] = "Article #{params[:Title]} saved."
	end

	def destroy
		@savedlink = SavedLink.find(params[:id])
		@savedlink.destroy
		flash[:notice] = 'Link deleted successfully'
		redirect_to '/savedlinks'
	end


end