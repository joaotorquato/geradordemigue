class ExcusesController < ApplicationController

  def index
  end

  def generate
    @excuse = Excuse.generate
    render :index
  end

end
