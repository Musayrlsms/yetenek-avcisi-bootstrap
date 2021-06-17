class EmployersController < ApplicationController
  def index
    @employer = Employer.all
  end

  def show
  end

  def new
    @employer = Employer.new
  end

  def edit
  end
end
