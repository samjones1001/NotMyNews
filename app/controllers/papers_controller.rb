class PapersController < ApplicationController

  def index
    @choice = current_user.preference
    @papers = Paper.where(:position => current_user.preference)
    render json: {paper: @papers.map{ |paper| paper.title} }
  end

end
