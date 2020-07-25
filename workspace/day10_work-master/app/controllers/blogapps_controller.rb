class BlogappsController < ApplicationController
  before_action :set_blogapp, only: [:show, :edit, :update, :destroy]

  # GET /blogapps
  # GET /blogapps.json
  def index
    @blogapps = Blogapp.all
  end

  # GET /blogapps/1
  # GET /blogapps/1.json
  def show
  end

  # GET /blogapps/new
  def new
    @blogapp = Blogapp.new
  end

  # GET /blogapps/1/edit
  def edit
  end

  # POST /blogapps
  # POST /blogapps.json
  def create
    @blogapp = Blogapp.new(blogapp_params)

    respond_to do |format|
      if @blogapp.save
        format.html { redirect_to @blogapp, notice: 'Blogapp was successfully created.' }
        format.json { render :show, status: :created, location: @blogapp }
      else
        format.html { render :new }
        format.json { render json: @blogapp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blogapps/1
  # PATCH/PUT /blogapps/1.json
  def update
    respond_to do |format|
      if @blogapp.update(blogapp_params)
        format.html { redirect_to @blogapp, notice: 'Blogapp was successfully updated.' }
        format.json { render :show, status: :ok, location: @blogapp }
      else
        format.html { render :edit }
        format.json { render json: @blogapp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogapps/1
  # DELETE /blogapps/1.json
  def destroy
    @blogapp.destroy
    respond_to do |format|
      format.html { redirect_to blogapps_url, notice: 'Blogapp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blogapp
      @blogapp = Blogapp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blogapp_params
      params.fetch(:blogapp, {})
    end
end
