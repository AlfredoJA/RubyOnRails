class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def set_article
  	@article = Article.find(params[:id])
  end

  def index
  	@articles = Article.all
  end

  def new
  	
  end

  def create
  	@article_dates = Article.new({"name" => params[:article_name],"content" => params[:article_content]})
  	#binding.pry
  	@article_dates.save
  	redirect_to articles_path
  end

  def show
  	
  
  end

  def edit
  	
  end

  def update
  	#binding.pry
  	dates_article = params[:article]
  	@article.update(name: dates_article[:name],content: dates_article[:content])
  	redirect_to article_path
    

  end

  def destroy
  	@article.destroy
  	redirect_to articles_path
  end

end
