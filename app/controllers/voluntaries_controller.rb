class VoluntariesController < ApplicationController
  before_action :set_voluntary, only: [:show, :edit, :update, :destroy]

  # GET /voluntaries
  # GET /voluntaries.json
  def index
    @voluntaries = Voluntary.all
  end

  # GET /voluntaries/1
  # GET /voluntaries/1.json
  def show
  end

  # GET /voluntaries/new
  def new
    @voluntary = Voluntary.new
  end

  # GET /voluntaries/1/edit
  def edit
  end

  # POST /voluntaries
  # POST /voluntaries.json
  def create
    @voluntary = Voluntary.new(voluntary_params)

    respond_to do |format|
      if @voluntary.save
        format.html { redirect_to @voluntary, notice: 'Voluntary was successfully created.' }
        format.json { render :show, status: :created, location: @voluntary }
      else
        format.html { render :new }
        format.json { render json: @voluntary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /voluntaries/1
  # PATCH/PUT /voluntaries/1.json
  def update
    respond_to do |format|
      if @voluntary.update(voluntary_params)
        format.html { redirect_to @voluntary, notice: 'Voluntary was successfully updated.' }
        format.json { render :show, status: :ok, location: @voluntary }
      else
        format.html { render :edit }
        format.json { render json: @voluntary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /voluntaries/1
  # DELETE /voluntaries/1.json
  def destroy
    @voluntary.destroy
    respond_to do |format|
      format.html { redirect_to voluntaries_url, notice: 'Voluntary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_voluntary
      @voluntary = Voluntary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def voluntary_params
      params.require(:voluntary).permit(:name, :bio, :age, :email, :user_id)
    end
end
