class NoteCategoriesController < ApplicationController
  authorize_resource
  # GET /note_categories
  # GET /note_categories.json
  def index
    @user = User.find(params[:user_id])
    @note_categories = @user.note_categories.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @note_categories }
    end
  end

  # GET /note_categories/1
  # GET /note_categories/1.json
  def show
    @note_category = NoteCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @note_category }
    end
  end

  # GET /note_categories/new
  # GET /note_categories/new.json
  def new
    @user = User.find(params[:user_id])
    @note_category = NoteCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @note_category }
    end
  end

  # GET /note_categories/1/edit
  def edit
    @note_category = NoteCategory.find(params[:id])
  end

  # POST /note_categories
  # POST /note_categories.json
  def create
    @user = User.find(params[:user_id])
    @note_category = @user.note_categories.new(note_category_params)

    respond_to do |format|
      if @note_category.save
        format.html { redirect_to @note_category, notice: 'Note category was successfully created.' }
        format.json { render json: @note_category, status: :created, location: @note_category }
      else
        format.html { render action: "new" }
        format.json { render json: @note_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /note_categories/1
  # PUT /note_categories/1.json
  def update
    @user = current_user
    @note_category = NoteCategory.find(params[:id])

    respond_to do |format|
      if @note_category.update_attributes(note_category_params)
        format.html { redirect_to @note_category, notice: 'Note category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @note_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /note_categories/1
  # DELETE /note_categories/1.json
  def destroy
    @note_category = NoteCategory.find(params[:id])
    @note_category.destroy

    respond_to do |format|
      format.html { redirect_to note_categories_url }
      format.json { head :no_content }
    end
  end

  private

  def note_category_params
    params.require(:note_category)
          .permit(:name, :user_id)
  end
end
