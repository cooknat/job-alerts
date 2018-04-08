class JobSearchesController < ApplicationController

#include JobScrape

  def index  	  	
    @jobSearches = current_user.job_searches
    @grouped_by_page = @jobSearches.to_a.group_by { |item| item.job_page.id }.values
  end

  def show  	
    if request.headers["HTTP_REFERER"] == 'http://localhost:3000/job_pages'
       @jobPage = JobPage.find(params[:id])
       @jobTitleList = []
    else       
  	   @jobSearch = JobSearch.find(params[:id]) 
       @jobPage = @jobSearch.job_page
       @jobTitleList = JobSearch.where(user: current_user, job_page: @jobSearch.job_page.id).select(:id, :job_title).to_a   
    end
          	
  end

  def new
    @jobSearch = JobSearch.new
    #nokogiri testing, leave here for now
    #@textvar = testScrape
  end

  def create   
    @jobSearch = JobSearch.new    
    @jobSearch.user_id = current_user.id
    @jobSearch.job_page_id = (params[:jpi]).to_i
    @jobSearch.job_title = params[:job_search][:job_title]

     if @jobSearch.save
       flash[:notice] = "New Search was created."
       redirect_to job_search_path(@jobSearch.id)
     else
       flash.now[:alert] = "There was an error saving the Search. Please try again."
       render :new
     end
  end  

  def edit

   
  end

  def destroy   
     @jobSearch = JobSearch.find(params[:id])
    
    if @jobSearch.destroy
      flash[:notice] = "\"#{@jobSearch.job_title}\" was deleted successfully."

      matches = JobSearch.where(user: current_user, job_page: @jobSearch.job_page.id).to_a
      if matches == []
        redirect_to @jobSearch
      else
       redirect_to job_search_path(matches.first.id)
      end 
      
    else
      flash.now[:alert] = "There was an error deleting the job title."
      render :show
    end
    
  end
end

