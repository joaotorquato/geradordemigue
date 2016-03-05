class ExcusesController < ApplicationController

  def index
  end

  def generate
    @excuse = Excuse.generate
  end

end
