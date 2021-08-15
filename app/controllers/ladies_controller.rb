class LadiesController < ApplicationController
  before_action :set_lady, only: %i[ show edit update destroy ]

  # GET /ladies or /ladies.json
  def index
    @ladies = Lady.all
  end

  # GET /ladies/1 or /ladies/1.json
  def show
  end

  # GET /ladies/new
  def new
    @lady = Lady.new
  end

  # GET /ladies/1/edit
  def edit
  end

  # POST /ladies or /ladies.json
  def create
    @lady = Lady.new(lady_params)

    respond_to do |format|
      if @lady.save
        format.html { redirect_to @lady, notice: "Lady was successfully created." }
        format.json { render :show, status: :created, location: @lady }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lady.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ladies/1 or /ladies/1.json
  def update
    respond_to do |format|
      if @lady.update(lady_params)
        format.html { redirect_to @lady, notice: "Lady was successfully updated." }
        format.json { render :show, status: :ok, location: @lady }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lady.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ladies/1 or /ladies/1.json
  def destroy
    @lady.destroy
    respond_to do |format|
      format.html { redirect_to ladies_url, notice: "Lady was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lady
      @lady = Lady.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lady_params
      params.fetch(:lady, {})
    end
end
