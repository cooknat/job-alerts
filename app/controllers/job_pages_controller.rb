class JobPagesController < ApplicationController
 
   before_action :authorise_user, only: [:update, :destroy]

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
    @jobPage = JobPage.find(params[:id])
  end  

  def update
    @jobPage = JobPage.find(params[:id])
    @jobPage.name = params[:job_page][:name]
    @jobPage.url = params[:job_page][:url]

     if @jobPage.save
        flash[:notice] = "Job page was saved."       
      redirect_to job_pages_path
    else
      flash.now[:alert] = "There was an error saving your changes. Please try again."
      render :edit
    end
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
