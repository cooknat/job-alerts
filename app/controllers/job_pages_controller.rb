class JobPagesController < ApplicationController
  def index
    @jobPages = JobPage.all
  end

  def show
    @jobPage = JobPage.find(params[:id])
    @jobSearch = JobSearch.new  
  end

  def new
    @jobPage = JobPage.new
  end

  def create
    @jobPage = JobPage.new    
    @jobPage.name = params[:job_page][:name]
    @jobPage.url = params[:job_page][:url]

     if @jobPage.save
       flash[:notice] = "New page was created."
       redirect_to job_pages_path
     else
       flash.now[:alert] = "There was an error saving the page. Please try again."
       render :new
     end
  end  

  def edit
    #leave for now, should only be available to site admin
  end

  def delete
    #leave for now, should only be available to site admin
  end
end
