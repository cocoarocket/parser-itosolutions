module ParsingMethods
  attr_accessor :list, :url, :page, :name, :number, :description, :specification, :category, :price, :hd_image_url, :export_dir

  include ProductsLoaderThread
  include Importer

  private

  def extract_url(raw_url:)
    raw_url.css('a[class="v-product__img"]').attr('href')
  end

  def load(url:)
    @page = load_product_page(url: url)
  end

  def name(page:)
    @name = page.css('span[itemprop="name"]').text.encode('utf-8')
  end

  def number(page:)
    @number = page.css('span[class="product_code"]').text.gsub("\n", '').encode('utf-8')
  end

  def description(page:)
    @description = nil
    if description = page.css('span[id="product_description"][itemprop="description"]')
      @description = description.text.gsub("\n", '').encode('utf-8').gsub('"', '`')
    end
    @description
  end

  #def description(page:)
  #  @description = page.css('div[id="ProductDetail_ProductDetails_div"] span[id="product_description"]').text.gsub("\n", '').encode('utf-8')
  #end

  def specification(page:)
    spec = "none"
    src = page.css('div[id="ProductDetail_TechSpecs_div"] ul li div[style="margin:5px 0 5px 0"]').first
    begin
      if src&.count > 0
        spec = specification_clear(raw: src).encode('utf-8')
        spec = spec.gsub('"', '`')
      end
    rescue Exception => e
      #puts "parsing.rb > Line 102: #{e.message}"
      spec = "none"
    end
    spec
  end

  def category(page:)
    unless (raw = page.css('td[colspan="2"][class="vCSS_breadcrumb_td"]')).empty?
      raw = category_formatting(raw: raw.css('td[colspan="2"][class="vCSS_breadcrumb_td"]').css('a')[1..-1]).gsub('Popular Software Brands','software')
    end
    @category ||= raw
  end

  def price(page:)
    @price = page.css('div[class="product_productprice"] span[itemprop="price"]').text.to_s.encode('utf-8')#.scan(/\$[\w\D]{1,10}/)[0].to_s
  end

  def hd_image_url(page:)
    @hd_image_url = page.css('a[id="product_photo_zoom_url"]').attr('href')
  end

  def get_name(page)
    page.css('span[itemprop="name"]').text.encode('utf-8')
  end


=begin
  =  1.product pages
  =  2.product list
  =  3.product name
  =  4.product number
  =  5.product description
  =  6.product specification
  =  7.product category
  =  8.product UPCode
  =  9.product Price
  = 10.product HD Image url
=end

end