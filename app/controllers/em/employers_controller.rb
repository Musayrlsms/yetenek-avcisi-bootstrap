class Em::EmployersController < ApplicationController
  def index
    #@employer = Employer.all
  end

  def show
    @users = Users.all
  end

  def new
    @employer = Employer.new
  end

  def edit
  end
end
