class AdvertsController < ApplicationController
  def index
    @adverts = Advert.all
  end

  def show
    @adverts = Advert.find(params[:id])
  end

  def new
    @adverts = Advert.new
    @jobs = Job.all
  end

  def create
    @adverts = Advert.new(adverts_params)
    if @adverts.save!
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
