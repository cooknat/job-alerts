require 'spec_helper'


 RSpec.describe JobPage, type: :model do

   let(:job_page) { JobPage.create!(name: "Guardian jobs", url: "https://workforus.theguardian.com/search-jobs-and-apply/?query=United+Kingdom&ccm_paging_p=1") }
 
   describe "attributes" do
     it "has title and body attributes" do
       expect(job_page).to have_attributes(name: "Guardian jobs", url: "https://workforus.theguardian.com/search-jobs-and-apply/?query=United+Kingdom&ccm_paging_p=1")
     end
   end
 end  