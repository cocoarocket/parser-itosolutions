class Urls
  include MethodsBuilder

  def initialize()
  end
end

@brands_page = [
  #{ name: "apc",                url: "https://www.itosolutions.net/apc-surge-protection-and-power-supply-s/3134.htm",            brand: "APC", title: "apc surge protection and power supply" },
  #{ name: "adder",              url: "https://www.itosolutions.net/Adder-s/3792.htm",                                            brand: "Adder", title: "Adder" },

  #{ name: "adobe_systems",      url: "https://www.itosolutions.net/Adobe-Systems-s/2743.htm",                                    brand: "Adobe Systems", title: "" },

  #{ name: "barracuda_networks", url: "https://www.itosolutions.net/barracuda-networks-hardware-and-it-services-s/3147.htm",      brand: "Barracuda Networks", title: "barracuda networks hardware and it services" },
  #{ name: "dell",               url: "https://www.itosolutions.net/dell-network-server-storage-s/3151.htm",                      brand: "Dell", title: "dell network server storage" },
  #{ name: "emc_corporation",    url: "https://www.itosolutions.net/dell-emc-software-s/3154.htm",                                brand: "EMC Corporation", title: "dell emc software" },
  #{ name: "ergotron",           url: "https://www.itosolutions.net/ergotron-mounts-desks-and-carts-s/3157.htm",                  brand: "Ergotron", title: "ergotron mounts desks and carts" },
  #{ name: "lenovo",             url: "https://www.itosolutions.net/lenovo-hardware-and-it-management-software-s/3168.htm",       brand: "Lenovo", title: "lenovo hardware and it management software" },
  #{ name: "microsoft",          url: "https://www.itosolutions.net/Microsoft-s/2741.htm",                                        brand: "Microsoft", title: "" },
  #{ name: "san_disk",           url: "https://www.itosolutions.net/sandisk-memory-drives-s/3176.htm",                            brand: "SanDisk", title: "sandisk memory drives" },
  #{ name: "seagate",            url: "https://www.itosolutions.net/seagate-storage-and-data-recovery-s/3177.htm",                brand: "Seagate", title: "seagate storage and data recovery" },
  #{ name: "synology",           url: "https://www.itosolutions.net/synology-storage-s/3179.htm",                                 brand: "Synology", title: "synology storage" },
  #{ name: "tripp_lite",         url: "https://www.itosolutions.net/tripp-lite-power-supply-and-hardware-mounts-s/3180.htm",      brand: "Tripp Lite", title: "tripp lite power supply and hardware mounts" },
  #{ name: "western_digital",    url: "https://www.itosolutions.net/western-digital-hard-drives-and-nas-s/3184.htm",              brand: "Western Digital", title: "western digital hard drives and nas" },
  #{ name: "zebra_technologies", url: "https://www.itosolutions.net/zebra-technologies-solutions-s/3185.htm",                     brand: "Zebra Technologies", title: "zebra technologies solutions" },
  #{ name: "hewlett_packard",    url: "https://www.itosolutions.net/hewlett-packard-enterprise-solutions-and-support-s/3163.htm", brand: "Hewlett-Packard Enterprise", title: "" },
]

@vmware = [
  #{ name: "vmware",  url: "https://www.itosolutions.net/VMWare-Virtualization-s/2100.htm",                            brand: "VMWare", title: "" },
  { name: "vmware", url: "https://www.itosolutions.net/searchresults.asp?searching=Y&search=vRealize&show=320&page=",                        brand: "VMWare", title: "" },
  { name: "vmware", url: "https://www.itosolutions.net/searchresults.asp?searching=Y&search=horizon&brand=Dell+Technologies&show=320&page=", brand: "VMWare", title: "" },
  { name: "vmware", url: "https://www.itosolutions.net/searchresults.asp?searching=Y&search=vsan&brand=Dell+Technologies&show=80&page=",  brand: "VMWare", title: "" },
]

@software_page = [
  #{ name: "acronis_backups",  url: "https://www.itosolutions.net/Acronis-Backup-s/2862.htm",           title: "Acronis Backup", brand: "Acronis Backup" },
  #{ name: "intel_security",   url: "https://www.itosolutions.net/Intel-Security-s/2863.htm",           title: "Intel Security", brand: "Intel Security" },
  #{ name: "nuance",           url: "https://www.itosolutions.net/Nuance-s/3804.htm",                   title: "Nuance",         brand: "Nuance" },
  #{ name: "red_hat",          url: "https://www.itosolutions.net/Red-Hat-s/2866.htm",                  title: "Red Hat",        brand: "Red Hat" },
  #{ name: "symantec",         url: "https://www.itosolutions.net/Symantec-s/2747.htm",                 title: "Symantec",       brand: "Symantec" },
  #{ name: "trend_micro",      url: "https://www.itosolutions.net/Trend-Micro-s/2834.htm",              title: "Trend Micro",    brand: "Trend Micro" },
  #{ name: "veeam_backup",     url: "https://www.itosolutions.net/Veeam-Backup-s/2745.htm",             title: "Veeam Backup",   brand: "Veeam Backup" },
  #{ name: "cisco_systems",     url: "https://www.itosolutions.net/cisco-systems-solutions-s/3150.htm",                  brand: "Cisco Systems", title: "cisco systems solutions", },
  { name: "fortinet",          url: "https://www.itosolutions.net/fortinet-firewall-appliances-anti-virus-s/3160.htm",  brand: "Fortinet",      title: "fortinet firewall appliances anti-virus" },
]

@missing_links = [
  { name: "cisco_systems", brand: "Cisco Systems", url: "https://www.itosolutions.net/cisco-services-p/con-snte-onsep413.htm" },
  { name: "cisco_systems", brand: "Cisco Systems", url: "https://www.itosolutions.net/Cisco-SMARTnet-1-Year-Extended-Service-p/con-prem-2811wk9.htm" },
  { name: "cisco_systems", brand: "Cisco Systems", url: "https://www.itosolutions.net/Cisco-SMARTnet-1-Year-Extended-Service-p/con-prem-as82bk8.htm" }
]