class Recipe
  include HTTParty

  ENV["FOOD2FORK_KEY"] = "4bb26e2e04c407f9b9811117bf7ad9e9"
  base_uri "http://food2fork.com/api/"

  default_params key: ENV["FOOD2FORK_KEY"]
  format :json

  def self.for word
    get("/search",query: { q: word})["recipes"]
  end
end
