class Pages::HomesController < ApplicationController
  before_action :set_pages_home, only: [:show, :edit, :update, :destroy]

  # GET /pages/homes
  # GET /pages/homes.json
  def index
    @pages_homes = Pages::Home.all
  end

  # GET /pages/homes/1
  # GET /pages/homes/1.json
  def show
  end

  # GET /pages/homes/new
  def new
    @pages_home = Pages::Home.new
  end

  # GET /pages/homes/1/edit
  def edit
  end

  # POST /pages/homes
  # POST /pages/homes.json
  def create
    @pages_home = Pages::Home.new(pages_home_params)

    respond_to do |format|
      if @pages_home.save
        format.html { redirect_to @pages_home, notice: 'Home was successfully created.' }
        format.json { render :show, status: :created, location: @pages_home }
      else
        format.html { render :new }
        format.json { render json: @pages_home.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pages/homes/1
  # PATCH/PUT /pages/homes/1.json
  def update
    respond_to do |format|
      if @pages_home.update(pages_home_params)
        format.html { redirect_to @pages_home, notice: 'Home was successfully updated.' }
        format.json { render :show, status: :ok, location: @pages_home }
      else
        format.html { render :edit }
        format.json { render json: @pages_home.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pages/homes/1
  # DELETE /pages/homes/1.json
  def destroy
    @pages_home.destroy
    respond_to do |format|
      format.html { redirect_to pages_homes_url, notice: 'Home was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pages_home
      @pages_home = Pages::Home.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pages_home_params
      params.fetch(:pages_home, {})
    end
end
