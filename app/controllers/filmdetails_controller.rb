class FilmdetailsController < ApplicationController
  before_action :set_filmdetail, only: [:edit, :update, :destroy, :show]
  def index
    @filmdetails = Filmdetail.all.by_new
  end

  def show
  end

  def new
    @filmdetail = Filmdetail.new

    @filmdetail.director_id = params[:director_id] if params[:director_id]
  end

  def create
    @filmdetail = Filmdetail.new(filmdetail_params)

    if @filmdetail.save
      redirect_to filmdetails_path
    else
      render "new"
    end
  end

  def edit
  end

  def update
    if @filmdetail.update(filmdetail_params)
      redirect_to filmdetail_path(@filmdetail)
    else
      render 'edit'
    end
  end

  def destroy
    @filmdetail.destroy
    redirect_to filmdetails_path
  end

  private
  def set_filmdetail
    @filmdetail = Filmdetail.find(params[:id])
  end

  def filmdetail_params
    params[:filmdetail].permit(
      :title,
      :release,
      :category,
      :starring,
      :description,
      :director_id,
    )
  end

end
