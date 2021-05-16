class ArticleMailerPreview < ActionMailer::Preview
  def new_article_email
    # Set up a temporary order for the preview
    article = Article.new(name: "Joe Smith", email: "joe@gmail.com", number: "1-2-3 Chuo, Tokyo, 333-0000", subject: "090-7777-8888", message: "I want to place an order!")

    ArticleMailer.with(article: article).new_article_email
  end
end