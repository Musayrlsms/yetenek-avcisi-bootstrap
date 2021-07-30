class JobsController < ApplicationController
  def index
    @jobs = Job.all

  end
  def new
    @job = Job.new

  end
  def create
    @jobs = Job.new(jobs_params)
    if @jobs.save!
      redirect_to jobs_path

    else
      render :new
    end
  end
  def jobs_params
    params.require(:job).permit(:name)
  end 

end
