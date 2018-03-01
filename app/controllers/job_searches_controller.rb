class JobSearchesController < ApplicationController

include JobScrape

  def index  	  	
    @jobSearches = current_user.job_searches
    @grouped_by_page = @jobSearches.to_a.group_by { |item| item.job_page.id }.values
  end

  def show  	
  	@jobSearch = JobSearch.find(params[:id])    
  	@kwList = JobSearch.where(user: current_user, job_page: @jobSearch.job_page.id).select(:keyword).to_a
  end

  def new
    @jobSearch = JobSearch.new
    #nokogiri testing, leave here for now
    @textvar = testScrape
  end

  def create   
    @jobSearch = JobSearch.new    
    @jobSearch.user_id = current_user.id
    @jobSearch.job_page_id = (params[:jpi]).to_i
    @jobSearch.keyword = params[:job_search][:keyword]

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

  def destroy
     @jobSearch = JobSearch.find(params[:id])
     @jobSearch.job_page_id
     #this is not deleting the correct one - think i need to search for the name not rely on the id
    if @jobSearch.destroy
      flash[:notice] = "\"#{@jobSearch.keyword}\" was deleted successfully."
      #if JobSearch.where(user: current_user, job_page: @jobSearch.job_page.id) 
      p "other matches #{JobSearch.where(user: current_user, job_page: @jobSearch.job_page.id).first }"

      #redirect_to job_search_path

      redirect_to @jobSearch
    else
      flash.now[:alert] = "There was an error deleting the keyword."
      render :show
    end
    
  end
end
