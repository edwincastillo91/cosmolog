class UniversController < ApplicationController
  before_action :set_univer, only: [:show, :edit, :update, :destroy]

  # GET /univers
  # GET /univers.json
  def index
    @univers = Univer.all
  end

  # GET /univers/1
  # GET /univers/1.json
  def show
  end

  # GET /univers/new
  def new
    @univer = Univer.new
  end

  # GET /univers/1/edit
  def edit
  end

  # POST /univers
  # POST /univers.json
  def create
    @univer = Univer.new(univer_params)

    respond_to do |format|
      if @univer.save
        format.html { redirect_to @univer, notice: 'Univer was successfully created.' }
        format.json { render :show, status: :created, location: @univer }
      else
        format.html { render :new }
        format.json { render json: @univer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /univers/1
  # PATCH/PUT /univers/1.json
  def update
    respond_to do |format|
      if @univer.update(univer_params)
        format.html { redirect_to @univer, notice: 'Univer was successfully updated.' }
        format.json { render :show, status: :ok, location: @univer }
      else
        format.html { render :edit }
        format.json { render json: @univer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /univers/1
  # DELETE /univers/1.json
  def destroy
    @univer.destroy
    respond_to do |format|
      format.html { redirect_to univers_url, notice: 'Univer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_univer
      @univer = Univer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def univer_params
      params.require(:univer).permit(:name, :user_id)
    end
end
