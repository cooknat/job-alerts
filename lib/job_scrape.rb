require 'open-uri'
require 'nokogiri'

module JobScrape

#every 1.day, at: '6:30 am' do
  #stuff here
#end

def testScrape
	
	html = Nokogiri::HTML(open("https://workforus.theguardian.com/search-jobs-and-apply/?query=United+Kingdom"))

	text  = html.at('body').inner_text

	

end



end