class RecipeControllerController < ApplicationController
  def index
    @search_term = params[:search] || 'chocolate'
    @recipes = Recipe.for(@search_term)
  end

  def random_string
  @random = ["If you want to achieve greatness stop asking for permission. --Anonymous","Trust because you are willing to accept the risk, not because it's safe or certain.--Anonymous", "All of our dreams can come true if we have the courage to pursue them.--Walt Disney", "Me,you mean..me?--Rick Grimes", "I am the one who knocks.--Walter White"].sample
  end
end
