class HomeController < ApplicationController
def index
    # @categories = Category.all
    # @products = Product.take(10).reverse!
    @category = Category.last
    @latestcatproducts = @category&.products || []
    @adverts = [
      {
        title: "The future is here",
        desc: "Experience the next generation of premium tech. Sleek design meets unparalleled performance.",
        btn: {
          placeholder: "Shop Now",
          url: "https://ratefy.co",
          bg: "bg-white",
          color: "text-blue-800"
        },
        thumbnail: {
          url: "https://img.kwcdn.com/product/Fancyalgo/VirtualModelMatting/6294b1f42bb7f02ae4e23f2d15bf8b94.jpg?imageView2/2/w/800/q/70/format/avif",
          alt: "The headset"
        },
        bg: "bg-blue-800"
      },

         {
        title: "Smokey Party Rice",
        desc: "For cheaper price! #2,000",
        btn: {
          placeholder: "Place Order",
          url: "https://ratefy.co",
          bg: "bg-white",
          color: "text-red-800"
        },
        thumbnail: {
          url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSM5rZBgcFrPX6HvYJk2uo_98OX3_e3SgKibebf2jVMSA&s=10",
          alt: "Jollof rice"
        },
        bg: "bg-red-600"
      },

        {
        title: "Summer Sale",
        desc: "Up to 50% off select tech.",
        btn: {
          placeholder: "Shop Now",
          url: "https://ratefy.co",
          bg: "bg-white",
          color: "text-blue-800"
        },
        thumbnail: {
          url: "https://lh3.googleusercontent.com/aida-public/AB6AXuAR4QH7O2FSNMwP7MV6zaktPSCIAyoFUeP-xwzjHsfaGAr4Qx1ZSImJja3sZqZjMgWRCx31j8FT-X80q-SlSTksa6E_doYJ_qFbz_K1hOfaXnSngnbQcJ-NF56eLt-RElDUhcRS7rYQ_NueImaexzA7_oZbOwAfCSdQYWXChpuIiRLJBfm9ISl_voQRI1aKFj5XX9G326SSjvF7PfeE7nhgLgOQ7BJ0Bxt8VrxtkgBom-ViRYCsD_ls",
          alt: "The headset"
        },
        bg: "bg-blue-700"
      }

    ]
    @categories = [
      {
        id: 1,
        name: "Electronics",
        icon: "fa-solid fa-tablet",
        slug: "electronics"
      },
      {
        id: 2,
        name: "Fashion",
        icon: "fa-solid fa-vest-patches",
        slug: "fashion"
      },

       {
         id: 3,
        name: "Home",
        icon: "fa-solid fa-chair",
        slug: "home"
      },

       {
         id: 4,
        name: "Beauty",
        icon: "fa-solid fa-brush",
        slug: "beauty"
      },
       {
         id: 5,
        name: "Beauty",
        icon: "fa-solid fa-brush",
        slug: "beauty"
      },

      {
         id: 6,
        name: "Sports",
        icon: "fa-solid fa-table-tennis-paddle-ball",
        slug: "sports"
      },

      {
        name: "Kids",
        icon: "fa-solid fa-child",
        slug: "kids"
      },
        {
        id: 1,
        name: "Electronics",
        icon: "fa-solid fa-tablet",
        slug: "electronics"
      },
      {
        id: 2,
        name: "Fashion",
        icon: "fa-solid fa-vest-patches",
        slug: "fashion"
      },

       {
         id: 3,
        name: "Home",
        icon: "fa-solid fa-chair",
        slug: "home"
      },

       {
         id: 4,
        name: "Beauty",
        icon: "fa-solid fa-brush",
        slug: "beauty"
      },
       {
         id: 5,
        name: "Beauty",
        icon: "fa-solid fa-brush",
        slug: "beauty"
      },

      {
         id: 6,
        name: "Sports",
        icon: "fa-solid fa-table-tennis-paddle-ball",
        slug: "sports"
      },

      {
        name: "Kids",
        icon: "fa-solid fa-child",
        slug: "kids"
      }

    ]

    @footer_categories = @categories.sample(4)

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



@trending_products = @products.map do | product|
  score = calculate_trending_score(product[:views], product[:favorites], product[:addToCart], product[:orders])
  product.merge(trending_score: score)
end


@trending_products = @trending_products.sort_by { |p|  -p[:trending_score] }.first(15)
@explore_products =  @products.sample(15)
end



private

def  calculate_trending_score(views, favorites, addToCart, orders)
  (views.to_i) + (favorites.to_i) + (addToCart.to_i) + (orders.to_i)
end
end
