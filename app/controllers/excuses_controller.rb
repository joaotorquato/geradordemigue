class ExcusesController < ApplicationController
  def index
  end

  def generate
    last_excuse = session[:last_excuse] || nil
    @excuse = Excuse.generate(last_excuse)
    session[:last_excuse] = @excuse
    render :index
  end
end
