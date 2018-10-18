class BlogMailer < 
  def blog_mail(blog)
    @blog = blog
    
    mail to:"", subject: "投稿完了メール"
  end
end
