# https://www.itosolutions.net/dell-network-server-storage-s/3151.htm?searching=Y&sort=13&cat=3151&show=500&page=2

module BrandsList
  def brands
    list
  end

  private
  def list
    [
      { name: "apc",                url: "https://www.itosolutions.net/apc-surge-protection-and-power-supply-s/3134.htm", brand: "APC", title: "apc surge protection and power supply" },
      { name: "adder",              url: "https://www.itosolutions.net/Adder-s/3792.htm", brand: "Adder", title: "Adder" },
      { name: "adobe_systems",      url: "https://www.itosolutions.net/Adobe-Systems-s/2743.htm", brand: "Adobe Systems", title: "" },
      { name: "barracuda_networks", url: "https://www.itosolutions.net/barracuda-networks-hardware-and-it-services-s/3147.htm", brand: "Barracuda Networks", title: "barracuda networks hardware and it services" },
      { name: "cisco_systems",      url: "https://www.itosolutions.net/cisco-systems-solutions-s/3150.htm", brand: "Cisco Systems", title: "cisco systems solutions" },
      { name: "dell",               url: "https://www.itosolutions.net/dell-network-server-storage-s/3151.htm", brand: "Dell", title: "dell network server storage" },
      { name: "emc_corporation",    url: "https://www.itosolutions.net/dell-emc-software-s/3154.htm", brand: "EMC Corporation", title: "dell emc software" },
      { name: "ergotron",           url: "https://www.itosolutions.net/ergotron-mounts-desks-and-carts-s/3157.htm", brand: "Ergotron", title: "ergotron mounts desks and carts" },
      { name: "fortinet",           url: "https://www.itosolutions.net/fortinet-firewall-appliances-anti-virus-s/3160.htm", brand: "Fortinet", title: "fortinet firewall appliances anti-virus" },
      { name: "hpe",                url: "https://www.itosolutions.net/category-s/3163.htm", brand: "HPE", title: "" },
      { name: "lenovo",             url: "https://www.itosolutions.net/lenovo-hardware-and-it-management-software-s/3168.htm", brand: "Lenovo", title: "lenovo hardware and it management software" },
      { name: "microsoft",          url: "https://www.itosolutions.net/Microsoft-s/2741.htm", brand: "Microsoft", title: "" },
      { name: "san_disk",           url: "https://www.itosolutions.net/sandisk-memory-drives-s/3176.htm", brand: "SanDisk", title: "sandisk memory drives" },
      { name: "seagate",            url: "https://www.itosolutions.net/seagate-storage-and-data-recovery-s/3177.htm", brand: "Seagate", title: "seagate storage and data recovery" },
      { name: "synology",           url: "https://www.itosolutions.net/synology-storage-s/3179.htm", brand: "Synology", title: "synology storage" },
      { name: "tripp_lite",         url: "https://www.itosolutions.net/tripp-lite-power-supply-and-hardware-mounts-s/3180.htm", brand: "Tripp Lite", title: "tripp lite power supply and hardware mounts" },
      { name: "veeam",              url: "https://www.itosolutions.net/Veeam-Backup-s/2745.htm", brand: "Veeam", title: "" },
      { name: "vmware",             url: "https://www.itosolutions.net/VMWare-Virtualization-s/2100.htm", brand: "VMWare", title: "" },
      { name: "western_digital",    url: "https://www.itosolutions.net/western-digital-hard-drives-and-nas-s/3184.htm", brand: "Western Digital", title: "western digital hard drives and nas" },
      { name: "zebra_technologies", url: "https://www.itosolutions.net/zebra-technologies-solutions-s/3185.htm", brand: "Zebra Technologies", title: "zebra technologies solutions" }
    ]
  end

  def dict
    {
      apc:                { name: "apc",                url: "https://www.itosolutions.net/apc-surge-protection-and-power-supply-s/3134.htm", brand: "APC", title: "apc surge protection and power supply" },
      adder:              { name: "adder",              url: "https://www.itosolutions.net/Adder-s/3792.htm", brand: "Adder", title: "Adder" },
      adobe_systems:      { name: "adobe_systems",      url: "https://www.itosolutions.net/Adobe-Systems-s/2743.htm", brand: "Adobe Systems", title: "" },
      barracuda_networks: { name: "barracuda_networks", url: "https://www.itosolutions.net/barracuda-networks-hardware-and-it-services-s/3147.htm", brand: "Barracuda Networks", title: "barracuda networks hardware and it services" },
      cisco_systems:      { name: "cisco_systems",      url: "https://www.itosolutions.net/cisco-systems-solutions-s/3150.htm", brand: "Cisco Systems", title: "cisco systems solutions" },
      dell:               { name: "dell",               url: "https://www.itosolutions.net/dell-network-server-storage-s/3151.htm", brand: "Dell", title: "dell network server storage" },
      emc_corporation:    { name: "emc_corporation",    url: "https://www.itosolutions.net/dell-emc-software-s/3154.htm", brand: "EMC Corporation", title: "dell emc software" },
      ergotron:           { name: "ergotron",           url: "https://www.itosolutions.net/ergotron-mounts-desks-and-carts-s/3157.htm", brand: "Ergotron", title: "ergotron mounts desks and carts" },
      fortinet:           { name: "fortinet",           url: "https://www.itosolutions.net/fortinet-firewall-appliances-anti-virus-s/3160.htm", brand: "Fortinet", title: "fortinet firewall appliances anti-virus" },
      hpe:                { name: "hpe",                url: "https://www.itosolutions.net/category-s/3163.htm", brand: "HPE", title: "" },
      lenovo:             { name: "lenovo",             url: "https://www.itosolutions.net/lenovo-hardware-and-it-management-software-s/3168.htm", brand: "Lenovo", title: "lenovo hardware and it management software" },
      microsoft:          { name: "microsoft",          url: "https://www.itosolutions.net/Microsoft-s/2741.htm", brand: "Microsoft", title: "" },
      san_disk:           { name: "san_disk",           url: "https://www.itosolutions.net/sandisk-memory-drives-s/3176.htm", brand: "SanDisk", title: "sandisk memory drives" },
      seagate:            { name: "seagate",            url: "https://www.itosolutions.net/seagate-storage-and-data-recovery-s/3177.htm", brand: "Seagate", title: "seagate storage and data recovery" },
      synology:           { name: "synology",           url: "https://www.itosolutions.net/synology-storage-s/3179.htm", brand: "Synology", title: "synology storage" },
      tripp_lite:         { name: "tripp_lite",         url: "https://www.itosolutions.net/tripp-lite-power-supply-and-hardware-mounts-s/3180.htm", brand: "Tripp Lite", title: "tripp lite power supply and hardware mounts" },
      veeam:              { name: "veeam",              url: "https://www.itosolutions.net/Veeam-Backup-s/2745.htm", brand: "Veeam", title: "" },
      vmware:             { name: "vmware",             url: "https://www.itosolutions.net/VMWare-Virtualization-s/2100.htm", brand: "VMWare", title: "" },
      western_digital:    { name: "western_digital",    url: "https://www.itosolutions.net/western-digital-hard-drives-and-nas-s/3184.htm", brand: "Western Digital", title: "western digital hard drives and nas" },
      zebra_technologies: { name: "zebra_technologies", url: "https://www.itosolutions.net/zebra-technologies-solutions-s/3185.htm", brand: "Zebra Technologies", title: "zebra technologies solutions" }
    }
  end
end

