def scrapp(resource:, minority_url:)
  @resource = resource[:res]
  @export_dir = resource[:dir]

  @resource.each do |brand|
    links = []
    @products = Product.new(url: "#{brand[:url]}", dir: @export_dir, minority_url: minority_url)

    puts "==============================================================================================================="
    puts "== Began for #{brand[:brand]}"
    puts "== url: #{brand[:url]}"

    if count = @products.count_pages(@products.body) and count.to_i > 0
      puts "== pages: #{count}"

      #https://www.itosolutions.net/Adobe-Systems-s/2743.htm?searching=Y&sort=13&cat=2743&show=360&page=2

      process = Proc.new do |url, attrs|
        count.to_i.times do |i|
          links.push("#{url}#{attrs}#{(i + 1)}")
        end
      end

      attrs = nil
      #attrs = "?searching=Y&show=360&page=" unless minority_url

      process.call(@products.url, attrs)

      products_urls = @products.do_products_urls(products_pages_links: links)

      puts "== Products found: #{products_urls.count}"
      print "== "

      @products.load_products(products_urls, brand)

    else
      puts "== no data"
      File.open("#{@export_dir}#{brand[:name]}.csv", 'a') do |file|
        # FIELDS
        # name+ sku+ description+short-description+category+price+image url
        file.puts "This BRAND do not has data"
      end
    end
    puts "== Finished of #{brand[:brand]}"
  end
  puts "============================================================"
  puts "extraction complete"
end

def rewriter(resource:, test: true)
  @resource = resource[:res]
  @dir = resource[:dir]

  if test
    name = "san_disk"
    File.open("#{@dir}#{name}.csv", 'r') do |file|
      while line = file.gets
        puts line
      end
    end
  else
    @resource.each do |brand|
      File.open("#{@dir}#{brand[:name]}.csv", 'a') do |file|
        file.puts "This BRAND do not has data"
      end
    end
  end

end