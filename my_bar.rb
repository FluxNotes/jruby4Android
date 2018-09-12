require 'java'

java_package 'org.mitre'

class MyBar
	def initialize(a, b)
		@a = a.to_i
		@b = b.to_i
	end

	java_signature 'int meh()'
	def meh
		puts @a * @b
	end
end
