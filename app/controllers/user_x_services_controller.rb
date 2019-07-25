class UserXServicesController < ApplicationController
  layout "lspa"
  before_action :set_user_x_service, only: [:show, :edit, :update, :destroy]

  # GET /user_x_services
  # GET /user_x_services.json

  def index
    @user_x_services = UserXService.all
  end

  # GET /user_x_services/1
  # GET /user_x_services/1.json
  def show

  end

  # GET /user_x_services/new
  def new
    @user_x_service = UserXService.new
  end

  # GET /user_x_services/1/edit
  def edit
  end

  # POST /user_x_services
  # POST /user_x_services.json
  def create
    @user_x_service = UserXService.new(user_x_service_params)

    respond_to do |format|
      if @user_x_service.save
        format.html { redirect_to @user_x_service, notice: 'User x service was successfully created.' }
        format.json { render :show, status: :created, location: @user_x_service }
      else
        format.html { render :new }
        format.json { render json: @user_x_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_x_services/1
  # PATCH/PUT /user_x_services/1.json
  def update
    respond_to do |format|
      if @user_x_service.update(user_x_service_params)
        format.html { redirect_to @user_x_service, notice: 'User x service was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_x_service }
      else
        format.html { render :edit }
        format.json { render json: @user_x_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_x_services/1
  # DELETE /user_x_services/1.json
  def destroy
    @user_x_service.destroy
    respond_to do |format|
      format.html { redirect_to user_x_services_url, notice: 'User x service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_x_service
      @user_x_service = UserXService.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_x_service_params
      params.require(:user_x_service).permit(:name, :email, :service, :servicedate, :message)
    end
end
