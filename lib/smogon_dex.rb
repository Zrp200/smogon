require "launchy"
module SmogonDex
	Catagories = %w(pokemon moves abilities items formats types)
	Generations = %w(xy dp gs bw rb rs)

	GEN_ARGS = Generations.map {|gen| "--#{gen}"}
	CAT_ARGS = Catagories.map {|catagory| "-#{catagory}"}

	module_function
	def search(data=Hash.new)
		data[:generation] ||= "xy"
		data[:catagory] ||= "pokemon"
		data[:query] ||= String.new
 
		raise ArgumentError, "#{data[:gen]} is not a valid generation" unless Generations.include? data[:gen]
		raise ArgumentError, "#{data[:catagory]} is not a valid catagory." unless Catagories.include? data[:catagory]
		Launchy.open "https://www.smogon.com/dex/#{ data.fetch :generation }/#{ data.fetch :catagory }/#{ data.fetch :query }/#{ data[:format] if data[:catagory] == "pokemon"}"
	end
	def homepage
		Launchy.open "https://www.smogon.com/dex"
	end
end