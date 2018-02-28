require 'open-uri'
require 'nokogiri'

module JobScrape

#every 1.day, at: '6:30 am' do
  #stuff here
#end

def testScrape

	#exception if hostname and server cert don't match
	html = Nokogiri::HTML(open("https://workforus.theguardian.com/search-jobs-and-apply/?query=United+Kingdom"))

	text  = html.at('body').inner_text
	s = ""

	if text.include? "Project Manager"
	  s += "there is a Project Manager role available"
	else
	  s += "there is no Project Manager role available"	
    end

    if text.include? "Junior Developer"
     s += " there is a junior dev position too"	
    else
	  s += "but unfortunately no junior dev role available"	
    end 
 
	s

end



end