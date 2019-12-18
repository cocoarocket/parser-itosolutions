ActiveRecord::Base.establish_connection(
  adapter:  'sqlite3', # mysql2
  database: 'db/sqlite3.db',
  username: 'DB_USER',
  password: 'DB_PASS',
  host:     'localhost'
)

class Brands < ActiveRecord::Base
  has_many :products
end


class Products < ActiveRecord::Base
  belongs_to :brands
end

ActiveRecord::Schema.define do
  # NAME, SKU, DESCRIPTION, SHORT-DESCRIPTION, CATEGORY, PRICE, HD IMAGE URL

  create_table :brands, force: true do |t|
    t.string :name
  end

  create_table :products, force: true do |t|
    t.belongs_to :brands, index: true
    t.string :name
    t.string :number
    t.string :description
    t.string :specification
    t.string :category
    t.string :price
    t.string :url
    t.string :hd_image_url
  end


end

=begin
ProductsModel.all.each do |o|
  puts "o: #{o}"
end
=end
