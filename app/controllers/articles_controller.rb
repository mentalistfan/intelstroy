class ArticlesController < ApplicationController
  def news
  	@news_cat = Category.find(1)
  	@page_title = @news_cat.title
  	@news_posts = Post.all.where(network_id: 1)
  end
  
  def show_news
	 @one = Post.find(params[:id])
  end

  def projects
    @projects_cat = Category.find(2)
    @subcategories = @projects_cat.subcategories
    
    @indexes = Array.new
    @subcategories.each{|i| @indexes << i.id }
    @indexes.push(2)

    @page_title = @projects_cat.title
    @projects_posts = Post.all.where(network_id: @indexes)
  end

  def show_sub
    @thissub = Category.find(params[:id])
    @subposts = Post.all.where(network_id: params[:id])  
  end

  def show_project
    @one = Post.find(params[:id])
    @projects_cat = Category.find(2)
    @subcategories = @projects_cat.subcategories
  end

  def services
  end
end
