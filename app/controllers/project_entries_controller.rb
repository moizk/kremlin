class ProjectEntriesController < ApplicationController
  before_filter :authenticate_user!

  # GET /project_entries
  # GET /project_entries.json
  def index
    @project_entries = ProjectEntry.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @project_entries }
    end
  end

  # GET /project_entries/1
  # GET /project_entries/1.json
  def show
    @project_entry = ProjectEntry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project_entry }
    end
  end

  # GET /project_entries/new
  # GET /project_entries/new.json
  def new
    @project = Project.find(params[:project_id])
    @project_entry = ProjectEntry.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @project_entry }
    end
  end

  # GET /project_entries/1/edit
  def edit
    @project = Project.find(params[:project_id])
    @project_entry = ProjectEntry.find(params[:id])
  end

  # POST /project_entries
  # POST /project_entries.json
  def create
    @project = Project.find(params[:project_id])
    @project_entry = @project.project_entries.new(params[:project_entry])

    respond_to do |format|
      if @project_entry.save
        format.html { redirect_to @project, notice: 'Project entry was successfully created.' }
        format.json { render json: @project_entry, status: :created, location: @project_entry }
      else
        format.html { render action: "new" }
        format.json { render json: @project_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /project_entries/1
  # PUT /project_entries/1.json
  def update
    @project = Project.find(params[:project_id])
    @project_entry = ProjectEntry.find(params[:id])

    respond_to do |format|
      if @project_entry.update_attributes(params[:project_entry])
        format.html { redirect_to @project, notice: 'Project entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @project_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_entries/1
  # DELETE /project_entries/1.json
  def destroy
    @project_entry = ProjectEntry.find(params[:id])
    @project_entry.destroy

    respond_to do |format|
      format.html { redirect_to root_path }
      format.json { head :no_content }
    end
  end
end
