class ResourceTypesController < ApplicationController
  before_action :set_resource_type, only: [:show, :edit, :update, :destroy]
  skip_before_filter :verify_authenticity_token

  # GET /resource_types
  # GET /resource_types.json
  def index
    @resource_types = ResourceType.all
  end

  # GET /resource_types/1
  # GET /resource_types/1.json
  def show
  end

  # GET /resource_types/new
  def new
    @resource_type = ResourceType.new
  end

  # GET /resource_types/1/edit
  def edit
  end

  # POST /resource_types
  # POST /resource_types.json
  def create
    @resource_type = ResourceType.new(resource_type_params)

    respond_to do |format|
      if @resource_type.save
        format.html { redirect_to @resource_type, notice: 'ResourceType was successfully created.' }
        format.json { render action: 'show', status: :created, location: @resource_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @resource_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resource_types/1
  # PATCH/PUT /resource_types/1.json
  def update
    respond_to do |format|
      if @resource_type.update(resource_type_params)
        format.html { redirect_to @resource_type, notice: 'ResourceType was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @resource_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resource_types/1
  # DELETE /resource_types/1.json
  def destroy
    @resource_type.destroy
    respond_to do |format|
      format.html { redirect_to resource_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resource_type
      @resource_type = ResourceType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resource_type_params
      params.require(:resource_type).permit!
    end
end
