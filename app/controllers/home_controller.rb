class HomeController < ApplicationController

def index
    @categories = Category.all
    @products = Product.take(10).reverse!
    @category = Category.last
    @latestcatproducts = @category&.products || []
    @adverts = [
      {
        name: "Notepaper AI",
        desc: "Turn your voice into handwritten notes.",
        url: "https://notepaperai.com",
        bg: "bg-red-500"
      },
      {
        name: "Ratefy",
        desc: "Trade and manage multiple currencies.",
        url: "https://ratefy.co",
         bg: "bg-blue-500"
      },
      {
        name: "Facebook",
        desc: "Trade and manage multiple currencies.",
        url: "https://ratefy.co",
         bg: "bg-green-500"
      }
    ]
end


end