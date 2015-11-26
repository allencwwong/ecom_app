
Image.create!([
  {product_id: "1", image_url: "http://localhost:3000/assets/bulbasaur.png"},
  {product_id: "1", image_url: "http://localhost:3000/assets/bulbasaur.png"},
  {product_id: "2", image_url: "http://localhost:3000/assets/charmander.jpg"},
  {product_id: "2", image_url: "http://localhost:3000/assets/charmander.jpg"},
  {product_id: "3", image_url: "http://localhost:3000/assets/squirtle.jpg"},
  {product_id: "3", image_url: "http://localhost:3000/assets/squirtle.jpg"},
  {product_id: "4", image_url: "http://localhost:3000/assets/pikachu.jpg"}
])
Order.create!([
  {user_id: 1, product_id: 1, qty: 2, tax: nil, subtotal: nil, total: nil},
  {user_id: 1, product_id: nil, qty: 2, tax: nil, subtotal: nil, total: nil},
  {user_id: 1, product_id: nil, qty: 5, tax: nil, subtotal: nil, total: nil},
  {user_id: 1, product_id: nil, qty: 5, tax: nil, subtotal: nil, total: nil},
  {user_id: 1, product_id: 1, qty: 3, tax: nil, subtotal: nil, total: nil},
  {user_id: 1, product_id: 3, qty: 6, tax: nil, subtotal: nil, total: nil},
  {user_id: 1, product_id: 4, qty: 2, tax: "8.0", subtotal: nil, total: nil},
  {user_id: 1, product_id: 2, qty: 3, tax: "11.0", subtotal: "136.0", total: nil},
  {user_id: 1, product_id: 2, qty: 5, tax: "11.0", subtotal: "7031.0", total: nil},
  {user_id: 1, product_id: 3, qty: 1, tax: "2025.0", subtotal: "303750.0", total: nil},
  {user_id: 1, product_id: 3, qty: 2, tax: "13.0", subtotal: "4050.0", total: nil},
  {user_id: 1, product_id: 4, qty: 2, tax: "16.0", subtotal: "196.0", total: nil},
  {user_id: 1, product_id: 4, qty: 2, tax: "16.0", subtotal: "180.0", total: "196.0"},
  {user_id: 1, product_id: 3, qty: 3, tax: "40.0", subtotal: "450.0", total: "490.0"},
  {user_id: 1, product_id: 1, qty: 3, tax: "27.0", subtotal: "300.0", total: "327.0"},
  {user_id: 1, product_id: 2, qty: 3, tax: "33.75", subtotal: "375.0", total: "408.0"}
])
Product.create!([
  {name: "Bulbasaur", price: 100, image: "http://localhost:3000/assets/bulbasaur.png", description: "Leaf Pokemon with seed on it's back.", stock: true, supplier_id: 1, category: "leaf", user_id: 1},
  {name: "Charmander", price: 125, image: "http://localhost:3000/assets/charmander.jpg", description: "Fire pokemon with a flame tail", stock: true, supplier_id: 1, category: "Fire", user_id: 1},
  {name: "Squirtle", price: 150, image: "http://localhost:3000/assets/squirtle.jpg", description: "Water pokemon that is a turtle", stock: true, supplier_id: 2, category: "Water", user_id: 1},
  {name: "Pikachu", price: 90, image: "http://localhost:3000/assets/pikachu.jpg", description: "Thunder mouse", stock: true, supplier_id: 1, category: "Lighting", user_id: 1},
  {name: "Mewtwo", price: 9999, image: "", description: "Powerful Cat", stock: nil, supplier_id: 3, category: "Physic ", user_id: 1},
  {name: "Mewtwo", price: 9999, image: "http://localhost:3000/assets/products/charmander-0d84e9eb23646db0d3b13730368773c92c65ad2119f0d54a32295da86fdb989a.jpg", description: "Powerful Cat", stock: nil, supplier_id: 3, category: "Physic ", user_id: 1}
])
Supplier.create!([
  {name: "Pallet Town", email: "ptown@kanto.com", phone: "8001234567"},
  {name: "Pewter City", email: "pcity@kanto.com", phone: "8661234567"},
  {name: "Saffron City", email: "scity@kanto.com", phone: "8771234567"}
])
