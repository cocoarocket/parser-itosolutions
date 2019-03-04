module Clearing
  private
  def specification_clear(raw:)
    el = raw.to_s.gsub("\n", '')
    el.gsub!('<div style="margin:5px 0 5px 0">', '')
    el.gsub!('</div>', '')
    el.gsub!(' style="color:#333333"', '')#.encode("iso-8859-1").force_encoding("utf-8")
  end

  def category_formatting(raw:)
    raw.map do |el|
      el = el.text
      el.strip
    end.join('|')
  end

  def clear_pages_count(raw:)
    count = 0

    begin
      count = raw.count

      if count > 0
        count = raw.text.scan(/\d{1,1000}/).first
      end

    rescue Exception => e
      puts "product.rb > Line 37: #{e.message}"
    end

    count
  end
end