class PapersController < ApplicationController

  def index
    if current_user
      @papers = Paper.where(:position => current_user.preference)
    else
      @papers = Paper.all
    end
    render json: {paper: @papers.map{ |paper| paper.title} }
  end

end
