class JobMailer < ApplicationMailer
    
    default from: "natalie@job-alert.co.uk"


    # headers["Message-ID"] = "<comments/#{comment.id}@your-app-name.example>"
    # headers["In-Reply-To"] = "<post/#{post.id}@your-app-name.example>"
    # headers["References"] = "<post/#{post.id}@your-app-name.example>"
 
     @user = user
     @jobPage = jobPage
    # @post = post
    # @comment = comment

     mail(to: user.email, subject: "New job listing on #{jobPage.name}")
   end
end
