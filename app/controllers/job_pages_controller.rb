class JobPagesController < ApplicationController
 
   before_action :authorise_user, only: [:edit, :destroy]

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

  def destroy
       @jobPage = JobPage.find(params[:id])
    
    if @jobPage.destroy
      flash[:notice] = "\"#{@jobPage.name}\" was deleted successfully."   
      redirect_to job_pages_path   
    else
      flash.now[:alert] = "There was an error deleting the job page."
      render :show
    end
  end

  def authorise_user
     unless current_user.admin?
       flash[:alert] = "You must be an admin to do that."
       redirect_to job_pages_path
     end
   end
end
