module ArticlesHelper
#  def article_params
#    params.require(:article).permit(:title, :body)
#  end
  
   def article_params
     params.require(:article).permit(:title, :body)
   end

end
