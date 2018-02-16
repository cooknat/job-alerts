class JobPagesController < ApplicationController
  def index
    @jobPages = JobPage.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def delete
  end
end
