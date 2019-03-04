class Product
  include ParsingMethods
  include Clearing

  attr_accessor :body, :export_dir

  def initialize(url:, dir:, minority_url:)
    @url = url
    @url = "#{@url}?searching=Y&show=360&page=" unless minority_url
    @export_dir = dir
    @body = load_product_page(url: @url)
  end

  private

  def load_product_page(url:)
    connect(url, '3')
  end
end

#https://www.itosolutions.net/Adobe-Systems-s/2743.htm?searching=Y&sort=13&cat=2743&show=360&page=2