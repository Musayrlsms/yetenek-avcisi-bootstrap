class Em::EmployersController < ApplicationController
  def index
    @workers = User.where(usertype:"worker")
  end

  def show
    @worker= User.find(params[:id])
  end

  def new
    @employer = Employer.new
  end

  def edit
  end
end
