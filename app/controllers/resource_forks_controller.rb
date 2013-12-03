class ResourceForksController < ApplicationController
  before_action :set_resource_fork, only: [:show, :edit, :update, :destroy]
  skip_before_filter :verify_authenticity_token

  # GET /resource_forks
  # GET /resource_forks.json
  def index
    @resource_forks = ResourceFork.all
  end

  # GET /resource_forks/1
  # GET /resource_forks/1.json
  def show
  end

  # GET /resource_forks/new
  def new
    @resource_fork = ResourceFork.new
  end

  # GET /resource_forks/1/edit
  def edit
  end

  # POST /resource_forks
  # POST /resource_forks.json
  def create
    @resource_fork = ResourceFork.new(resource_fork_params)

    respond_to do |format|
      if @resource_fork.save
        format.html { redirect_to @resource_fork, notice: 'ResourceFork was successfully created.' }
        format.json { render action: 'show', status: :created, location: @resource_fork }
      else
        format.html { render action: 'new' }
        format.json { render json: @resource_fork.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resource_forks/1
  # PATCH/PUT /resource_forks/1.json
  def update
    respond_to do |format|
      if @resource_fork.update(resource_fork_params)
        format.html { redirect_to @resource_fork, notice: 'ResourceFork was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @resource_fork.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resource_forks/1
  # DELETE /resource_forks/1.json
  def destroy
    @resource_fork.destroy
    respond_to do |format|
      format.html { redirect_to resource_forks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resource_fork
      @resource_fork = ResourceFork.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resource_fork_params
      params.require(:resource_fork).permit!
    end
end
