class Api::ZonesController < ApplicationController
  def index
    @zones = Zone.all
    render json: @zones
  end
end
