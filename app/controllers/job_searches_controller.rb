class JobSearchesController < ApplicationController
  def index
  	#change this, it should be filtered by current user
    @jobSearches = current_user.job_searches
  end

  def show
    @jobSearch = JobSearch.find(params[:id])
  end

  def new
    @jobSearch = JobSearch.new
  end

  def create
    @jobSearch = JobSearch.new    
    @jobSearch.name = params[:job_search][:name]
    @jobSearch.url = params[:job_search][:url]

     if @jobSearch.save
       flash[:notice] = "New Search was created."
       redirect_to @jobSearch
     else
       flash.now[:alert] = "There was an error saving the Search. Please try again."
       render :new
     end
  end  

  def edit
   
  end

  def delete
    
  end
end
