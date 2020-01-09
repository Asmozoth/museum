class CatastrophesController < ApplicationController
  before_action :set_catastrophe, only: [:show, :edit, :update, :destroy]

  # GET /catastrophes
  # GET /catastrophes.json
  def index
    @catastrophes = Catastrophe.all
  end

  # GET /catastrophes/1
  # GET /catastrophes/1.json
  def show
  end

  # GET /catastrophes/new
  def new
    @catastrophe = Catastrophe.new
  end

  # GET /catastrophes/1/edit
  def edit
  end

  # POST /catastrophes
  # POST /catastrophes.json
  def create
    @catastrophe = Catastrophe.new(catastrophe_params)

    respond_to do |format|
      if @catastrophe.save
        format.html { redirect_to @catastrophe, notice: 'Catastrophe was successfully created.' }
        format.json { render :show, status: :created, location: @catastrophe }
      else
        format.html { render :new }
        format.json { render json: @catastrophe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catastrophes/1
  # PATCH/PUT /catastrophes/1.json
  def update
    respond_to do |format|
      if @catastrophe.update(catastrophe_params)
        format.html { redirect_to @catastrophe, notice: 'Catastrophe was successfully updated.' }
        format.json { render :show, status: :ok, location: @catastrophe }
      else
        format.html { render :edit }
        format.json { render json: @catastrophe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catastrophes/1
  # DELETE /catastrophes/1.json
  def destroy
    @catastrophe.destroy
    respond_to do |format|
      format.html { redirect_to catastrophes_url, notice: 'Catastrophe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catastrophe
      @catastrophe = Catastrophe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catastrophe_params
      params.require(:catastrophe).permit(:image, :nom, :genre, :lieu, :date, :puissance, :morts, :blesses)
    end
end
