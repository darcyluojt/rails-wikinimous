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
    @article = Article.new(article_param)
    @article.save
    redirect_to article_path(param[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  private
  def article_param
    params.requre(:article).permit(:title, :content)
  end
end
