class ArticleMailer < ApplicationMailer
	def new_article_email
    @article = params[:article]

   
  end
end
