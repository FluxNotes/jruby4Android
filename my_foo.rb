require 'java'
require './my_bar'

java_package 'org.mitre'

class Foo
	java_signature 'void main(String[])'
	def self.main(args)
		bar(args[0], args[1])
		muh_bar = MyBar.new(3, 2)
		muh_bar.meh()
	end

	java_signature 'int bar(int, int)'
	def self.bar(a, b)
		puts a.to_i + b.to_i
		return a.to_i + b.to_i
	end
end
