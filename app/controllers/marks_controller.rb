class MarksController < ApplicationController

  def index
    @marks = Mark.all
  end

  def show
    @mark = Mark.find_by(id: params[:id])
    @user = User.find_by(id: @mark.user_id)
  end

  def new
  end

  def create
    @mark = Mark.new
    @mark.name = params[:name]
    @mark.url = params[:url]
    @mark.description = params[:description]
    @mark.user_id = params[:user_id]

    if @mark.save
      redirect_to "/marks/#{ @mark.id }"
    else
      render 'new'
    end
  end

  def edit
    @mark = Mark.find_by(id: params[:id])
  end

  def update
    @mark = Mark.find_by(id: params[:id])
    @mark.name = params[:name]
    @mark.url = params[:url]
    @mark.description = params[:description]
    @mark.user_id = params[:user_id]

    if @mark.save
      redirect_to "/marks/#{ @mark.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @mark = Mark.find_by(id: params[:id])
    @mark.destroy


    redirect_to "/marks"
  end
end
