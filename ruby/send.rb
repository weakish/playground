class Object

	# TODO use quickcheck
	# @example universal send
	# 	3.send { |x| x.to_f} #=> 3.0
	# 	3.send 'to_f' #=> 3.0
	# 	3.send :to_f #=> 3.0
	# 	3.send ->x {x.to_f} #=> 3.0
	# 	3.send method(:to_f) #=> 3.0
		
	def send(message = nil, *args)
		begin
			yield(self)
			self
		rescue LocalJumpError
			if message.nil?
				self
			elsif [String, Symbol].include? message
				self.__send__(message, *args)
			elsif message.is_a? Proc
				message.call(self, *args)
			elsif message.is_a? Method
				self.message.call(*args)
			else
				raise ArgumentError, 'I can not understand your message.'
			end
		end
	end
end
