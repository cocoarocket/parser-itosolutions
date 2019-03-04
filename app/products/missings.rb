class ProductMissing
  include ParsingMethods
  include Clearing

  def initialize(**res)
    #puts res[:dir]
    #puts
    #print res
    @minority_url = res[:minority_url]
    @export_dir = res[:dir]
  end
end