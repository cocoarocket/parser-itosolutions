module ProductsLoaderThread
  def load_products_links_thread(urls:)
    @result, threads, pages = [], [], urls

    for page_to_fetch in pages
      threads << Thread.new(page_to_fetch) do |url|
        if page = connect(url, "1")
          list = page.css('div[class="v-product"]')
          if list.count != 360
            puts
            puts "== founds urls on page #{list.count}, url: #{url}"
          end
          list.each do |row|
            tmp_url = row.css('a[class="v-product__img"]').attr('href')
            @result << "#{tmp_url}"
          end

        end
      end
    end

    threads.each {|thr| thr.join }
    @result
  end

  def open_products_pages_thread(urls:)
    @result, threads, pages = [], [], urls

    pages.each do |page_to_fetch|
      threads << Thread.new(page_to_fetch) do |url|
        if page = connect(url, "2")
          @result << page
        end
      end
    end

    threads.each {|thr| thr.join }
    @result
  end

  private
  def connect(url, from)
    page = false
    begin
      page = Nokogiri::HTML(Net::HTTP.get(URI.parse(URI.escape("#{url.to_s}"))))
    rescue Exception => e
      puts "FROM #{from}. Error CONNECT on #{url}, message: #{e.message}"
    #ensure puts "FROM #{from}. Ensure CONNECT on #{url}"
    end
    page
  end
end
