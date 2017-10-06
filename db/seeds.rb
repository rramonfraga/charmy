# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
def create_store
  Store.create(id: 0, name: 'Gran Via')
end

def create_size
  [['XS', 36], ['S', 38], ['M', 40], ['L', 42], ['XL', 44]].each do |e|
    Size.create(category: 't-shirt', symbol: e[0], number: e[1])
    Size.create(category: 'jeans', symbol: e[0], number: e[1])
    Size.create(category: 'shoes', symbol: nil, number: e[1])
  end
end

def create_styles
  %w(casual clasico hipster minimal moderneo street).each do |name|
    Style.create(name: name, image_style: File.new("#{Rails.root}/public/images/styles/#{name}.png"))
  end
end

def create_products
  p1 = Product.create(name: 'Top',
    code: "TOP#{Random.rand(10)}",
    category: 'top',
    price: Random.rand(30),
    color: 'grey',
    position: 'A1',
    gender: 'female',
    material: 'cotton',
    store: Store.find(0),
    size_id: Size.find_by(category: 't-shirt').id,
    style_ids: [Style.all.sample]
  )
  p2 = Product.create(name: 'Jeans',
    code: "JEANS#{Random.rand(10)}",
    category: 'bottom',
    price: Random.rand(30),
    color: 'blue',
    position: 'B1',
    gender: 'female',
    material: 'cotton',
    store: Store.find(0),
    size_id: Size.find_by(category: 'jeans').id,
    style_ids: [Style.all.sample]
  )
  p3 = Product.create(name: 'Shoes',
    code: "SHOES#{Random.rand(10)}",
    category: 'shoes',
    price: Random.rand(30),
    color: 'white',
    position: 'C1',
    gender: 'female',
    material: 'cotton',
    store: Store.find(0),
    size_id: Size.find_by(category: 'shoes').id,
    style_ids: [Style.all.sample]
  )
  f1 = FashionSet.new(
    name: "SET#{Random.rand(10)}",
    gender: 'female',
    colors: ['grey', 'red'],
    style: Style.first,
    store: Store.find(0)
  )
  f1.products << p1
  f1.products  << p2
  f1.products  << p3
  f1.save
end

create_store
create_size
create_styles
create_products
create_products
