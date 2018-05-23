require 'checksum/checksum'

class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = checksum(Article.find(params[:id]).text)
  end

  def new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to @article
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  private
  def article_params
    params.require(:article).permit(:text)
  end

end
