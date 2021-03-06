class NotesController < ApplicationController
  skip_authorization_check :only => [:index]
  # GET /notes
  # GET /notes.json
  def index
    @notes = Note.all

    respond_to do |format|
      format.html # index.html.erb
      format.atom
    end
  end

  # GET /notes/1
  # GET /notes/1.json
  def show
    @note = Note.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @note }
    end
  end

  # GET /notes/new
  # GET /notes/new.json
  def new
    @user = User.find(params[:user_id])
    @note = Note.new
    @note.note_category_id = params[:note_category_id]

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @note }
    end
  end

  # GET /notes/1/edit
  def edit
    @user = User.find(params[:user_id])
    @note_categories = NoteCategory.all
    @note = Note.find(params[:id])
  end

  # POST /notes
  # POST /notes.json
  def create
    @user = User.find(params[:user_id])
    @note = @user.notes.new(note_params)

    respond_to do |format|
      if @note.save
        format.html { redirect_to @note.note_category, notice: 'Note was successfully created.' }
        format.json { render json: @note, status: :created, location: @note }
      else
        format.html { render action: "new" }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /notes/1
  # PUT /notes/1.json
  def update
    @user = User.find(params[:user_id])
    @note = Note.find(params[:id])

    respond_to do |format|
      if @note.update_attributes(note_params)
        format.html { redirect_to @note.note_category, notice: 'Note was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notes/1
  # DELETE /notes/1.json
  def destroy
    @note = Note.find(params[:id])
    @note.destroy

    respond_to do |format|
      format.html { redirect_to notes_url }
      format.json { head :no_content }
    end
  end

  private

  def note_params
    params.require(:note)
          .permit(:title, :url, :user_id, :note_category_id, :thought, :purchased)
  end
end
