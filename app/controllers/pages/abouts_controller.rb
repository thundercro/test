class Pages::AboutsController < ApplicationController
  before_action :set_pages_about, only: [:show, :edit, :update, :destroy]

  # GET /pages/abouts
  # GET /pages/abouts.json
  def index
    @pages_abouts = Pages::About.all
  end

  # GET /pages/abouts/1
  # GET /pages/abouts/1.json
  def show
  end

  # GET /pages/abouts/new
  def new
    @pages_about = Pages::About.new
  end

  # GET /pages/abouts/1/edit
  def edit
  end

  # POST /pages/abouts
  # POST /pages/abouts.json
  def create
    @pages_about = Pages::About.new(pages_about_params)

    respond_to do |format|
      if @pages_about.save
        format.html { redirect_to @pages_about, notice: 'About was successfully created.' }
        format.json { render :show, status: :created, location: @pages_about }
      else
        format.html { render :new }
        format.json { render json: @pages_about.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pages/abouts/1
  # PATCH/PUT /pages/abouts/1.json
  def update
    respond_to do |format|
      if @pages_about.update(pages_about_params)
        format.html { redirect_to @pages_about, notice: 'About was successfully updated.' }
        format.json { render :show, status: :ok, location: @pages_about }
      else
        format.html { render :edit }
        format.json { render json: @pages_about.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pages/abouts/1
  # DELETE /pages/abouts/1.json
  def destroy
    @pages_about.destroy
    respond_to do |format|
      format.html { redirect_to pages_abouts_url, notice: 'About was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pages_about
      @pages_about = Pages::About.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pages_about_params
      params.fetch(:pages_about, {})
    end
end
