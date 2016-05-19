Gem::Specification.new do |gem|
	gem.name = "smogon_dex"
	gem.author = "Zachary R. Perlmutter"
	gem.email = "zrp200@gmail.com"
	gem.executables << "smogon_dex"
	gem.files = Dir["lib/**/*"]
	gem.summary = "Allows easy searching of the entire Smogon pokedex"
	gem.version = "1.2.0"
	gem.add_runtime_dependency "launchy"
	gem.license = "MIT"
end