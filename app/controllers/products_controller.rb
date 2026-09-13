class ProductsController < ApplicationController
    def index
        @products = Product.order("Random()")
    end

   
    def show

      @product = {
      name: "Premium Edge Smartphone",
      slug: "premium-edge-smartphone",
      productImages:[
        "https://images.unsplash.com/photo-1508685096489-7aacd43bd3b1?w=600&auto=format&fit=crop",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhv9iA-tK5nguqaohCiUh13RasBgML0s1ztZfaaKZJDw&s=10",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqCkI3PXa3GXme66k7ds6dBSdXUOuU9dDt5h3KBG3Y7Q&s=10",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRoUU1FF0ILMtBOn6h9i90RZRkvkM-FrQP7Ud_Iv5T25wUuDxYx5p2zZs&s=10"
    
    ],
      category: {
      name: "Phones",
      slug: "phones"
    },
    price: {
      current: 459.99,
      previous: 599.99
    },
    colors:['Black','Blue', "Red"],
    sizes:['Base', 'Medium', 'Standard'],
     isSaved: true,
     isAddedToCart:true,
     delivery:{
       freeDelivery: true,
       arrivaldaysMin:2,
       arrivaldaysMax:5
     },
     description:"Experience pure audio perfection with the Aura Studio Noise Cancelling Wireless headphones. Designed for audiophiles, these over-ear headphones deliver deep bass, crisp highs, and exceptional midrange clarity.",
     warranty:{
      has:true,
      duration: 2 #in month
     },
     reviews:{
      rating:4.5,
      count:128
     }

      }


      @products = [
  {
    id: 16,
    category: {
      name: "Audio",
      slug: "audio"
    },
    name: "Studio Pro Wireless Headphones",
    slug: "studio-pro-wireless-headphones",
    price: {
      current: 34.99,
      previous: 54.99
    },
    thumbnail: "https://images.unsplash.com/photo-1546435770-a3e426bf472b?w=600&auto=format&fit=crop",
    isSaved: false,
    views: 1200,
    favorites: 80,
    addToCart: 45,
    orders: 12
  },
  {
    id: 17,
    category: {
      name: "Computers",
      slug: "computers"
    },
    name: "MacBook Style Ultra Laptop",
    slug: "macbook-style-ultra-laptop",
    price: {
      current: 799.99,
      previous: 949.99
    },
    thumbnail: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJFC_cF_Vge289GJKhIVwfcdpwjtecZ-eVuFvjKhLPnQ&s=10",
    isSaved: true,
    views: 1430,
    favorites: 107,
    addToCart: 78,
    orders: 42
  },
  {
    id: 18,
    category: {
      name: "Phones",
      slug: "phones"
    },
    name: "Premium Edge Smartphone",
    slug: "premium-edge-smartphone",
    price: {
      current: 459.99,
      previous: 599.99
    },
    thumbnail: "https://images.unsplash.com/photo-1598327105666-5b89351aff97?w=600&auto=format&fit=crop",
    isSaved: false,
    views: 400,
    favorites: 21,
    addToCart: 15,
    orders: 3
  },
  {
    id: 19,
    category: {
      name: "Gaming",
      slug: "gaming"
    },
    name: "RGB Pro Gaming Controller",
      slug: "rgb-pro-gaming-controller",
    price: {
      current: 42.99,
      previous: 64.99
    },
    thumbnail: "https://images.unsplash.com/photo-1592840496694-26d035b52b48?w=600&auto=format&fit=crop",
    isSaved: true,
    views: 1200,
    favorites: 80,
    addToCart: 45,
    orders: 12
  },
  {
    id: 20,
    category: {
      name: "Cameras",
      slug: "cameras"
    },
    name: "Mirrorless Digital Camera",
    slug: "Mirrorless-Digital-Camera",
    price: {
      current: 529.99,
      previous: 699.99
    },
    thumbnail: "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?w=600&auto=format&fit=crop",
    isSaved: false,
    views: 390,
    favorites: 480,
    addToCart: 306,
    orders: 109
  },
  {
    id: 21,
    category: {
      name: "Fashion",
      slug: "fashion"
    },
    name: "Premium Everyday Sneakers",
    slug: "Premium-Everyday-Sneakers",
    price: {
      current: 44.99,
      previous: 69.99
    },
    thumbnail: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=600&auto=format&fit=crop",
    isSaved: true,
    views: 700,
    favorites: 408,
    addToCart: 306,
    orders: 209
  },
  {
    id: 22,
    category: {
      name: "Wearables",
      slug: "wearables"
    },
    name: "ActiveFit Smart Watch",
        slug: "ActiveFit-Smart-Watch",
    price: {
      current: 79.99,
      previous: 119.99
    },
    thumbnail: "https://images.unsplash.com/photo-1508685096489-7aacd43bd3b1?w=600&auto=format&fit=crop",
    isSaved: false,
    views: 21,
    favorites: 8,
    addToCart: 4,
    orders: 2
  },
  {
    id: 23,
    category: {
      name: "Home",
      slug: "home"
    },
    name: "Modern Automatic Coffee Maker",
       slug: "Modern-Automatic-Coffee-Maker",
    price: {
      current: 67.99,
      previous: 94.99
    },
    thumbnail: "https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?w=600&auto=format&fit=crop",
    isSaved: true,
    views: 1000,
    favorites: 800,
    addToCart: 408,
    orders: 178
  },
  {
    id: 24,
    category: {
      name: "Accessories",
      slug: "accessories"
    },
    name: "Premium Wireless Charging Pad",
     slug: "Premium-Wireless-Charging-Pad",
    price: {
      current: 19.99,
      previous: 32.99
    },
    thumbnail: "https://images.unsplash.com/photo-1586953208448-b95a79798f07?w=600&auto=format&fit=crop",
    isSaved: false,
    views: 70,
    favorites: 56,
    addToCart: 38,
    orders: 16
  },
  {
    id: 25,
    category: {
      name: "Home",
      slug: "home"
    },
    name: "Minimalist Smart Table Lamp",
        slug: "Minimalist-Smart-Table-Lamp",
    price: {
      current: 29.99,
      previous: 49.99
    },
    thumbnail: "https://images.unsplash.com/photo-1507473885765-e6ed057f782c?w=600&auto=format&fit=crop",
    isSaved: true,
    views: 3600,
    favorites: 1780,
    addToCart: 1500,
    orders: 780
  },
  {
    id: 26,
    category: {
      name: "Audio",
      slug: "audio"
    },
    name: "Portable Bass Bluetooth Speaker",
        slug: "Portable-Bass-Bluetooth-Speaker",
    price: {
      current: 38.99,
      previous: 59.99
    },
    thumbnail: "https://images.unsplash.com/photo-1608043152269-423dbba4e7e1?w=600&auto=format&fit=crop",
    isSaved: false,
    views: 1200,
    favorites: 80,
    addToCart: 45,
    orders: 12
  }
]


@footer_categories = []



        
    end



    def add_to_cart
        @product = Product.find_by(params[:product_id])
        @cart = current_cart
        @cart_item = @cart.cart_items.find_by(product: @product, size: params[:size])
        if @cart_item
          @cart_item.increment!(:quantity)
        else
          @cart_item = @cart.cart_items.build(product: @product, quantity: 1, size: params[:size])
        end
        if @cart_item.save
          redirect_to @product, notice: "Product was successfully added to cart."
        else
          redirect_to @product, alert: "Failed to add product to cart."
        end
      end
end
