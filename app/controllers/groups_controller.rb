class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy]
  
  #If you want to do some action before destroy
  r#be#fore_destroy :some_method
  #Same, but before restore
  #before_restore :callback_name_goes_here

  layout 'bootstrap'
  # GET /groups
  # GET /groups.json
  def index
    @groups = Group.all
    @deletedGroups = Group.only_deleted
  end

  # GET /groups/1
  # GET /groups/1.json
  def show
  end

  # GET /groups/new
  def new
    @group = Group.new
  end

  # GET /groups/1/edit
  def edit
  end

  # POST /groups
  # POST /groups.json
  def create
    @group = Group.new(group_params)

    respond_to do |format|
      if @group.save
        flash[:success] = 'Todo was successfully created.'
        format.html { redirect_to @group }
        format.json { render :show, status: :created, location: @group }
      else
        flash[:danger] = 'There was a problem creating the Group.'
        format.html { render :new }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /groups/1
  # PATCH/PUT /groups/1.json
  def update
    respond_to do |format|
      if @group.update(group_params)
        flash[:success] = 'Grupo was successfully updated.'
        format.html { redirect_to @group}
        format.json { render :show, status: :ok, location: @group }
      else
        flash[:danger] = 'There was a problem updating the Grupo.'
        format.html { render :edit }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groups/1
  # DELETE /groups/1.json
  def destroy
    @group.destroy
    respond_to do |format|
    flash[:success] = 'Grupo was successfully destroyed.'
     format.html { redirect_to groups_url}
     format.json { head :no_content }
   end
 end

 def restore
    respond_to do |format|
      if Group.with_deleted.find(params[:id]).restore(:recursive => true)
        flash[:success] = "Group restored successfully" 
        format.html { redirect_to users_url }
      else
        flash[:danger] = "There was a problem restoring the User" 
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end  
    end
  end

 private
    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @group = Group.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_params
      params.require(:group).permit(:name)
    end
  end
