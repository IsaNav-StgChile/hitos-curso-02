# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all
Product.destroy_all

categories = [ 'Ropa Bebe', 'Mandalas', 'Cuadros' ]
	
products = [
    { name: 'Vestido Bebe  Sol', description: ' Tejido crochet, vestido, zapatitos, cintillo', stock: 3, price: 15000, sku: 'AIX0120', category: categories[0] },
    { name: 'Conjunto Bebe', description: 'Chompa, pantalon, zapatitos', stock: 12, price: 12000, sku: 'XMM0312', category: categories[0] },
    { name: 'Vestido Bebe Flor', description: 'Tejido crochet, vestido, zapatitos, cintillo', stock: 2, price: 300, sku: 'XPP0313', category: categories[0] },
    { name: 'Vestido Bebe Reina', description: ', Tejido crochet, vestido, zapatitos, cintillo', stock: 2, price: 900, sku: 'S100901', category: categories[0] },	

    { name: 'Mandala Flor', description: 'Circular crochet ', stock: 10, price: 5000, sku: 'ZSD009', category: categories[1] },
    { name: 'Mandala Hojas', description: 'Circular crochet', stock: 13, price: 60, sku: 'ASS090', category: categories[1] },
    { name: 'Mandala Flor', description: 'Circular crochet', stock: 15, price: 100, sku: 'TPB132', category: categories[1] },

    { name: 'Marina Algarrobo', description: 'Bordado punto cruz, 50 * 40 ', stock: 1, price: 150000, sku: 'MW2323', category: categories[2] },
    { name: 'Marina Velero', description: 'Bordado punto cruz, 70 * 50 ', stock: 1, price: 200000, sku: 'KC3245', category: categories[2] },
    { name: 'Marina Tropical', description: 'Bordado punto cruz, 30 * 20', stock: 1, price: 30000, sku: 'CW7788', category: categories[2] }
]

categories.each do |category|
    cat = Category.create(name: category)
    puts "Se ha creado la categoría: #{cat.name}"
end

products.each do |product|
    cat = Category.find_by(name: product[:category])
    prod = Product.create(name: product[:name],
                          description: product[:description],
                          stock: product[:stock],
                          price: product[:price],
                          sku: product[:sku])

    prod.categories.push(cat)
    puts "Se ha creado el producto: #{prod.name} en la categoría: #{prod.categories.first.name}"
end