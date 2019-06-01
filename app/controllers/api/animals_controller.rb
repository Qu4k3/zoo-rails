class Api::AnimalsController < ApplicationController
  def index
    @animals = Animal.all
    render json: @animals
  end
end
