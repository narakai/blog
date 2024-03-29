class ApplicationController < ActionController::Base
 def new
  end
 
  def create
  	@article = Article.new(article_params)

  	@article.save
  	redirect_to @article
  end

	def show
	  @article = Article.find(params[:id])
	end

  def destroy
  @article = Article.find(params[:id])
  @article.destroy
 
  redirect_to articles_path
  end

  private
    def article_params
    	params.require(:article).permit(:title, :text)
  	end
  	
end
