class HomeController < ApplicationController
  # GET /ladies or /ladies.json
  def index
    @top_personals = Personal.first(6)
  end
end
