class ArticlesController < ApplicationController
  def index
	    @articles = Article.all
	end

	def show
	    @article = Article.find(params[:id])
	end

	def new
	    @article = Article.new
	end

	def create
	    @article = Article.new(article_params)

	    if @article.save
	      ArticleMailer.with(article: @article).new_article_email.deliver_later

	      flash[:success] = "Thank you for your order! We'll get contact you soon!"
	      redirect_to root_path
	    else
	      flash.now[:error] = "Your order form had some errors. Please check the form and resubmit."
	      render :new
	    end
  	end

	
	private
	    def article_params
	      params.require(:article).permit(:name, :email, :number, :messege, :subject)
	    end

end
