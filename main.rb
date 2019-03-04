#!/usr/bin/env ruby
# encoding: UTF-8
require './builder'

puts "Loading list"

@brands = { res: @brands_page, dir: "./data/brands/" }
@software = { res: @software_page, dir: "./data/software/" }
@vmware_data = { res: @vmware, dir: "./data/vmware/" }

@res = [ @software ]
@vm = [ @vmware_data ]

def run(res = nil, minority_url = false)
  res.each do |res|
    scrapp(resource: res, minority_url: minority_url)
  end
end

def missings_links
  @missing_links.each do |line|
    @missings = ProductMissing.new(url: "#{line[:url]}", dir: "./data/vmware/", minority_url: true)
    @missings.load_products(line[:url], line)
  end
end

run(@res, false)
