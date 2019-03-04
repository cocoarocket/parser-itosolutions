module UrlsMethods
  attr_accessor :url, :name, :brand, :brand_title

  include BrandsList

  def setup_brand(brand)
    @url = "#{dict[brand][:url]}?searching=Y&show=360"
    @name = dict[brand][:name]
    @brand = dict[brand][:brand]
    @brand_title = dict[brand][:itle]
    self
  end

  def brands
    dict
  end

  def adder
    setup_brand(:adder)
  end

  def adobe_systems
    setup_brand(:adobe_systems)
  end

  def apc
    setup_brand(:apc)
  end

  def barracuda_networks
    setup_brand(:barracuda_networks)
  end

  def cisco_systems
    setup_brand(:cisco_systems)
  end

  def dell
    setup_brand(:dell)
  end

  def emc_corporation
    setup_brand(:emc_corporation)
  end

  def ergotron
    setup_brand(:ergotron)
  end

  def fortinet
    setup_brand(:fortinet)
  end

  def hpe
    setup_brand(:hpe)
  end

  def lenovo
    setup_brand(:lenovo)
  end

  def microsoft
    setup_brand(:microsoft)
  end

  def san_disk
    setup_brand(:san_disk)
  end

  def seagate
    setup_brand(:seagate)
  end

  def synology
    setup_brand(:synology)
  end

  def tripp_lite
    setup_brand(:tripp_lite)
  end

  def veeam
    setup_brand(:veeam)
  end

  def vmware
    setup_brand(:vmware)
  end

  def western_digital
    setup_brand(:western_digital)
  end

  def zebra_technologies
    setup_brand(:zebra_technologies)
  end

end

=begin
def adder
    @url = "https://www.itosolutions.net/Adder-s/3792.htm?searching=Y&cat=3151&show=500"
  end

  def adobe_systems
    @url = "http://www.itosolutions.net/Adobe-Systems-s/2743.htm?searching=Y&cat=3151&show=500"
  end

  def apc
    @url = "https://www.itosolutions.net/apc-surge-protection-and-power-supply-s/3134.htm?searching=Y&cat=3151&show=500"
  end

  def barracuda_networks
    @url = "https://www.itosolutions.net/barracuda-networks-hardware-and-it-services-s/3147.htm?searching=Y&cat=3151&show=500"
  end

  def cisco_systems
    @url = "https://www.itosolutions.net/cisco-systems-solutions-s/3150.htm?searching=Y&cat=3151&show=500"
  end

  def dell
    @url = "https://www.itosolutions.net/dell-network-server-storage-s/3151.htm?searching=Y&cat=3151&show=500"
  end

  def emc_corporation
    @url = "https://www.itosolutions.net/dell-emc-software-s/3154.htm?searching=Y&cat=3151&show=500"
  end

  def ergotron
    @url = "https://www.itosolutions.net/ergotron-mounts-desks-and-carts-s/3157.htm?searching=Y&cat=3151&show=500"
  end

  def fortinet
    @url = "https://www.itosolutions.net/fortinet-firewall-appliances-anti-virus-s/3160.htm?searching=Y&cat=3151&show=500"
  end

  def hpe
    @url = "http://www.itosolutions.net/category-s/3163.htm?searching=Y&cat=3151&show=500"
  end

  def lenovo
    @url = "https://www.itosolutions.net/lenovo-hardware-and-it-management-software-s/3168.htm?searching=Y&cat=3151&show=500"
  end

  def microsoft
    @url = "http://www.itosolutions.net/Microsoft-s/2741.htm?searching=Y&cat=3151&show=500"
  end

  def san_disk
    @url = "https://www.itosolutions.net/sandisk-memory-drives-s/3176.htm?searching=Y&cat=3151&show=500"
  end

  def seagate
    @url = "https://www.itosolutions.net/seagate-storage-and-data-recovery-s/3177.htm?searching=Y&cat=3151&show=500"
  end

  def synology
    @url = "https://www.itosolutions.net/synology-storage-s/3179.htm?searching=Y&cat=3151&show=500"
  end

  def tripp_lite
    @url = "https://www.itosolutions.net/tripp-lite-power-supply-and-hardware-mounts-s/3180.htm?searching=Y&cat=3151&show=500"
  end

  def veeam
    @url = "http://www.itosolutions.net/Veeam-Backup-s/2745.htm?searching=Y&cat=3151&show=500"
  end

  def vmware
    @url = "http://www.itosolutions.net/VMWare-Virtualization-s/2100.htm?searching=Y&cat=3151&show=500"
  end

  def western_digital
    @url = "https://www.itosolutions.net/western-digital-hard-drives-and-nas-s/3184.htm?searching=Y&cat=3151&show=500"
  end

  def zebra_technologies
    @url = "https://www.itosolutions.net/zebra-technologies-solutions-s/3185.htm?searching=Y&cat=3151&show=500"
  end
=end
