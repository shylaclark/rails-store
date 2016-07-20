# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#---
# encoding: utf-8
Product.delete_all
Product.create!(title: 'Test Product 1',
                description:
                    %{
Couillon zydeco gulf shrimp tasso praline.
Tasso viens ci Acadiana envie cayenne gumbo Fauxcheaux sugar cane Fauxcheaux.
Envie lagniappe fried catfish Acadiana hot sauce football Mardi Gras.
Macque choux fried catfish gumbo levee jambalaya interstate viens ci.
Lagniappe tasso bread pudding Boudreaux boiled crawfish crawfish viens ci red beans & rice fais do do bonjour.
Macque choux pirogue boucherie Lafayette cayenne sauce piquante tasso catahoula.
},
                image_url: 't_product1.jpg',
                price: 33.00)
# . . .
Product.create!(title: 'Test Product 2',
                description:
                    %{
Mardi Gras boucherie downtown football beer boucherie make a roux bisque bourre.
Macque choux gulf shrimp jambalaya ca c'est bon praline merci beaucoup fais do do yams King Cake andouille.
Mirliton boucherie farmer's market sac a lait cajun andouille boudin viens ci canaille.
Crawfish gulf shrimp Fauxcheaux macque choux tasso Lafayette macque choux hot sauce.
Bayou cher gulf shrimp lagniappe canaille hot sauce lagniappe levee.
Gumbo sa fait chaud levee okra gumbo envie remoulade pirogue.
},
                image_url: 't_product2.jpg',
                price: 10.00)
# . . .

Product.create!(title: 'Test Product 3',
                description:
                    %{
Mardi Gras food bonjour farmer's market boiled crawfish.
Turducken iced tea barbed wire lagniappe fais do do catahoula gulf shrimp beer sac a lait interstate.
Boudreaux sugar cane hunting bisque bonjour bread pudding.
Bayou beignet praline gumbo interstate red beans & rice tasso.
},
                image_url: 't_product3.jpg',
                price: 9.95)