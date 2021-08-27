class ArticlesController < ApplicationController
  before_action :set_article, only: [:edit, :show]

  def index
    @articles = Article.order("created_at DESC")
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    article = Article.find(params[:id])
    article.destroy
    # redirect_to root_path
  end

  def edit
  end

  def update
    article = Article.find(params[:id])
    article.update(article_params)
    if article.valid?
      redirect_to article_path(article.id)
    else
      render :edit
    end
  end

  def show
  end

  private

  def article_params
    params.require(:article).permit(:image, :title, :text, :category_id, ).merge(user_id: current_user.id)
  end

  def set_article
    begin
      @article = Article.find(params[:id])
    rescue
      render :destroy
    end
  end

end
