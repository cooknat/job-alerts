class JobSearchesController < ApplicationController
  require "job_scrape.rb"
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
    @textvar = testScrape
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
