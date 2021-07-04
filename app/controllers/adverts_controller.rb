class AdvertsController < ApplicationController
  def index
    @adverts = Advert.all
  end

  def show
    @adverts = Advert.find_by_id(params[:id])
  end

  def new
    @adverts = Advert.new
  end

  def create
    @adverts = Advert.new(adverts_params)
    if @adverts.save
      redirect_to adverts_path
    else
      render :new
    end
  end

  def edit
  end

  def adverts_params
    params.require(:advert).permit(:title, :description, :salary, :experience, :employer_id, :job_id)
  end
end
