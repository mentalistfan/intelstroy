class CompanycontactsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_companycontact, only: [:show, :edit, :update, :destroy]
  layout "admin"
  # GET /companycontacts
  # GET /companycontacts.json
  def index
    @companycontacts = Companycontact.all
  end

  # GET /companycontacts/1
  # GET /companycontacts/1.json
  def show
  end

  # GET /companycontacts/new
  def new
    @companycontact = Companycontact.new
  end

  # GET /companycontacts/1/edit
  def edit
  end

  # POST /companycontacts
  # POST /companycontacts.json
  def create
    @companycontact = Companycontact.new(companycontact_params)

    respond_to do |format|
      if @companycontact.save
        format.html { redirect_to @companycontact, notice: 'Companycontact was successfully created.' }
        format.json { render :show, status: :created, location: @companycontact }
      else
        format.html { render :new }
        format.json { render json: @companycontact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /companycontacts/1
  # PATCH/PUT /companycontacts/1.json
  def update
    respond_to do |format|
      if @companycontact.update(companycontact_params)
        format.html { redirect_to @companycontact, notice: 'Companycontact was successfully updated.' }
        format.json { render :show, status: :ok, location: @companycontact }
      else
        format.html { render :edit }
        format.json { render json: @companycontact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companycontacts/1
  # DELETE /companycontacts/1.json
  def destroy
    @companycontact.destroy
    respond_to do |format|
      format.html { redirect_to companycontacts_url, notice: 'Companycontact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_companycontact
      @companycontact = Companycontact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def companycontact_params
      params.require(:companycontact).permit(:title, :slug, :punktmenu, :description, :keywords, :image, :body)
    end
end
