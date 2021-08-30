class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @name = current_user.name
    @articles = @user.articles
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
  end

end
