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

  def edit
    @article = Article.find(params[:id])
  end

  def create
    
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
      flash[:notice] = "Article was successfully created."
    else
      render 'new'
    end    
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
      flash[:notice] = "Article was successfully updated."
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    if @article.destroy
      redirect_to root_path
      flash[:notice] = "Article was successfully deleted."
    else
      render 'show'
      flash[:notice] = "Something went wrong. Article was not deleted."
    end
  end

  private

    def article_params
      params.require(:article).permit(:title, :content)
    end
  
end

