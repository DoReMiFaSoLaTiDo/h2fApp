class ArticlesController < ApplicationController
  include ArticlesHelper
	def index
		@articles = Article.all
	end

	def show
		@article = Article.find(params[:id])
	end

	def new
		@article = Article.new
	end

#	def create
#		@article = Article.new
#		@article.title = params[:article][:title]
#		@article.body = params[:article][:body]
#		@article.save
#		redirect_to article_path(@article)
#	end
	
	def create
	  @article = Article.new(article_params)
#	  @article = Article.new(params[:article])
	  @article.save
	  flash.notice = "New Article '#{@article.title}' Created!"
	  redirect_to article_path(@article)
	end
  
  def destroy
    @article = Article.find(params[:id])
    @article.delete
    flash.notice = "Article '#{@article.title}' Deleted!"
#    @articles = Article.all
    redirect_to articles_path(@articles)
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    flash.notice = "Article '#{@article.title}' Updated!"
    redirect_to article_path(@article)
  end

end
