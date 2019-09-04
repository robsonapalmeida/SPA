class UserXServicesController < ApplicationController
  
  layout "lspa"
  before_action :set_user_x_service, only: [:show, :edit, :update, :destroy]
  
  # GET /user_x_services
  # GET /user_x_services.json


  # Set a simple session cookie
    
  
                                  
  def index
    #Changed by a session, much better
    #if $email == "" 
    #  @user_x_services = UserXService.all
    #elsif $email != "" 
    #  @user_x_services = UserXService.where("email = ? ",$email)
    #end

    if session[:email] == "" 
      @user_x_services = UserXService.order(id: :desc)
    elsif session[:email] != "" 
      @user_x_services = UserXService.where("email = ? ",session[:email])
    end

  end

  # GET /user_x_services/1
  # GET /user_x_services/1.json
  def show

  end

  # GET /user_x_services/new
  def new
    @user_x_service = UserXService.new
    @SS_Type = $S_Type 
  
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
        #$email = @user_x_service.email
        session[:email] = @user_x_service.email
        
        #format.html { redirect_to @user_x_service, notice: 'Servicio cadastrado com exito.' }
        format.html  {redirect_to :controller => 'user_x_services', :action => 'index' }
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
        format.html { redirect_to @user_x_service, notice: 'Servicio atualizado com exito.' }
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
      format.html { redirect_to user_x_services_url, notice: 'Servicio excluido.' }
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
      params.require(:user_x_service).permit(:name, :email, :service_id, :servicedate, :message,:servicetime)
    end
end
