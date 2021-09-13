class PersonalsController < ApplicationController
  before_action :set_personal, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, only: %i[edit create update destroy]

  # GET /ladies or /ladies.json
  def index
    if params[:men]
      @personals = Personal.where(gender_id: (Gender.find_by_title('Men').id))
    else
      @personals = Personal.where(gender_id: (Gender.find_by_title('Lady').id))
    end
  end

  # GET /ladies/1 or /ladies/1.json
  def show
  end

  # GET /ladies/new
  def new
    @personal = Personal.new
  end

  # GET /ladies/1/edit
  def edit
  end

  # POST /ladies or /ladies.json
  def create
    @personal = Personal.new(personal.merge(user_id: current_user.id))
    byebug
    respond_to do |format|
      if @personal.save
        format.html { redirect_to @personal, notice: "Personal was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ladies/1 or /ladies/1.json
  def update
    respond_to do |format|
      if @personal.update(personal)
        format.html { redirect_to @personal, notice: "personal was successfully updated." }
        format.json { render :show, status: :ok, location: @personal }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @personal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ladies/1 or /ladies/1.json
  def destroy
    @personal.destroy
    respond_to do |format|
      format.html { redirect_to ladies_url, notice: "personal was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personal
      @personal = Personal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def personal
      params.require(:personal).permit(:name, :age, :height, :price, :ph_no, :user_id, :gender_id, :description, interest_ids: [], images: [])
    end
end
