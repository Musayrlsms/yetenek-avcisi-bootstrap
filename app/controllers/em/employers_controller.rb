class Em::EmployersController < ApplicationController
  def index
    #@employer = Employer.all
  end

  def show
    @workers = Workers.all
  end

  def new
    @employer = Employer.new
  end

  def edit
  end
end
