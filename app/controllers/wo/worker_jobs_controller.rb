class Wo::WorkerJobsController < ApplicationController
  def index
    @worker_job = WorkerJob.all
    
  end
  def show
    
  end
  def create
    advert = params[:format]
    worker = current_wo_user.id
    worker_job = WorkerJob.new
    worker_job.advert_id = advert
    worker_job.worker_id = worker
    worker_job.save!
    redirect_to wo_adverts_path
  end
end
