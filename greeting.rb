greeting = ARGV.shift


ARGV.each do |name|
	puts "Hey #{greeting} #{name}"
end
