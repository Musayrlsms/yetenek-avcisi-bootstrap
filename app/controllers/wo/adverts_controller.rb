class Wo::AdvertsController < ApplicationController
  def index
    @adverts = Advert.all
  end

  def show
    @adverts = Advert.find(params[:id])
  end

  def edit
  end

  def adverts_params
    params.require(:advert).permit(:title, :description, :salary, :experience, :employer_id, :job_id)
  end
end
