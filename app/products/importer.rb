module Importer
  def do_products_urls(products_pages_links:)
    @raw_products, temp_links = [], []

    puts "== exctracting products links"
    print "== "

    pointer_progress = 0
    until (pages_for_pool = products_pages_links.slice!(0..10)).empty? do
      pointer_progress = active_progress(pointer_progress)
      @raw_products.concat load_products_links_thread(urls: pages_for_pool)
    end

    @raw_products
  end

  def load_products(urls, brand)
    pointer_progress = 0
    puts "count urls began on #{urls.count}"
    print "== "
    until (urls_for_pool = urls.slice!(0..10)).empty?
      @csv_line = []
      pointer_progress = active_progress(pointer_progress)
      @result = open_products_pages_thread(urls: urls_for_pool)

      begin
        @result.each do |page|
          # FIELDS
          # NAME, SKU, DESCRIPTION, SHORT-DESCRIPTION, CATEGORY, PRICE, HD IMAGE URL
          @csv_line.push("\"#{name(page: page)}\",\"#{number(page: page)}\",\"#{specification(page: page)}\",\"#{description(page: page)}\",\"#{category(page: page)}\",\"#{price(page: page)}\",\"#{hd_image_url(page: page)}\"")
        end
      rescue Exception => e
        puts "ERROR on line 36-39 load_products: #{e.message}"
      end

      File.open("#{@export_dir}#{brand[:name]}.csv", 'a') do |file|
        @csv_line.each do |el|
          el = el.delete("\r")
          el = el.delete("\n")
          el = el.gsub('\u00','')
          el = el.gsub('\uA0','')
          begin
            file.puts el
          rescue Exception => e
            puts "== ERROR Code in load_products on line 54: <<<< #{e.message} >>>>"
            puts "#{el}"
          end
        end
      end
    end

    puts
    puts "== count urls end on #{urls.count}"

  end

  def count_pages(arg)
    count = 0
    src = arg.css('form[class="search_results_section"] table[cellpadding="3"][cellspacing="0"][width="100%"] b font[face="Arial"][size="2"] b')

    begin
      if src.count > 0
        count = clear_pages_count(raw: src)
      end
    rescue Exception => e
      puts "== parsing.rb > Line 67: #{e.message}"
    end

    count
  end

  private
  def active_progress(pointer_progress = 0)
    print "."
    if pointer_progress >= 107
      pointer_progress = 0
      puts
      print "== "
    end

    pointer_progress + 1
  end
end