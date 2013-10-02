class ProjectsController < ApplicationController
  before_filter :authenticate_user!
  def new
    @project=current_user.projects.new



    #respond_to do |format|
    #  format.html # new.html.erb
    #  format.json { render json: @company }
    #end
  end

  # GET /companies/1/edit
  def edit
    @project = current_user.projects.find(params[:id])
  end

  def index
    @projects = Project.all
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project }
    end

  end

  # POST /companies
  # POST /companies.json
  def create
    @project = current_user.projects.create(params[:project] )
    respond_to do |format|
      if @project.save
         format.html { redirect_to user_project_path current_user.id,@project.id }
        else
          render 'new', :message => "there is some error"
      end
    end
  end

  def show
    @project = current_user.projects.last

  end

  def destroy
    @project = current_user.projects.find(params[:id])
    @project.delete
    respond_to do |format|
      format.html {redirect_to :root }
      format.json { render json: @project }
    end
  end

  def update
    @project = current_user.projects.find(params[:id])

    respond_to do |format|
      if @project.update_attributes(params[:project])
        format.html { redirect_to user_project_path(current_user.id ,@project.id), notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end


end