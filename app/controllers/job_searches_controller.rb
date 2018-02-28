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
    p "jpi #{params[:jpi]}"
    #p "jpi #{(params[:jpi]).key}"
    #p "jpi #{(params[:jpi]).value}"
    p "jpi #{(params[:jpi]).to_i}"
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

  def delete
    
  end
end
