# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create( [
    {
        name: 'Dog Food',
        sku: 'DO666',
        price: 45.00
    },
    {
        name: 'Cat Food',
        sku: 'CAT66',
        price: 30.00
    },
    {
        name: 'Fish Food',
        sku: 'FDHC232',
        price: 10.40
    }
])