class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    @articles.order(event_at: :desc)
  end

  def new
  end
  
  def edit
    @article = Article.find(params[:id])
  end

  def create
    # @article = Article.create(author: params[:author], content: params[:content])
    # @article.author = params[:author]
    # @article.content = params[:content]
    
    if Article.create(author: params[:author], content: params[:content])
      redirect_to articles_path
    else
      render :new
    end
  end

  def update
    @article = Article.find(params[:id])
    @article.update(author: params[:author], content: params[:content])
    redirect_to articles_path
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end
end
