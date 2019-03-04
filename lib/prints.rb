var = { name: "name", url: "url", progress: "0%" }

def output(args)
  Gem.win_platform? ? (system "cls") : (system "clear")
  args.each_key do |key|
    puts args[key]
  end
end