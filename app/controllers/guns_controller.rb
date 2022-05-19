class GunsController < ApplicationController
  before_action :set_gun, only: %i[ show edit update destroy ]

  # GET /guns or /guns.json
  def index
    @guns = Gun.all
  end

  # GET /guns/1 or /guns/1.json
  def show
  end

  # GET /guns/new
  def new
    @gun = Gun.new
  end

  # GET /guns/1/edit
  def edit
  end

  # POST /guns or /guns.json
  def create
    @gun = Gun.new(gun_params)

    respond_to do |format|
      if @gun.save
        format.html { redirect_to root_path, notice: "Gun was successfully created." }
        format.json { render :show, status: :created, location: @gun }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gun.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guns/1 or /guns/1.json
  def update
    respond_to do |format|
      if @gun.update(gun_params)
        format.html { redirect_to gun_url(@gun), notice: "Gun was successfully updated." }
        format.json { render :show, status: :ok, location: @gun }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gun.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guns/1 or /guns/1.json
  def destroy
    @gun.destroy

    respond_to do |format|
      format.html { redirect_to guns_url, notice: "Gun was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gun
      @gun = Gun.find(params[:id])
    end

    def gun_params
      params.require(:gun).permit(:name, :caliber, :ammo, :needs, :serial, :avatar, :ids => [])
    end
end