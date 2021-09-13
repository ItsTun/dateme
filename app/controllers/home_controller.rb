class HomeController < ApplicationController
  # GET /ladies or /ladies.json
  def index
    @top_personals = Personal.first(8)
  end
end
