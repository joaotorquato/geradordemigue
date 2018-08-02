class ExcusesController < ApplicationController

  def index
  end

  def generate
    last_excuse_id = session[:last_excuse_id] || nil
    @excuse = Excuse.generate(last_excuse_id)
    session[:last_excuse_id] = @excuse.id
    render :index
  end

end
