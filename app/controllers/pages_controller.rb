require 'open-uri'

class PagesController < ApplicationController
  URL = 'https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json'.freeze
  before_action :set_flats

  def home; end

  # GET /flats/:id
  def show
    @flat = @flats.find { |flat| flat['id'] == params[:id].to_i }
  end

  private

  def set_flats
    @flats = JSON.parse(open(URL).read)
  end



end
