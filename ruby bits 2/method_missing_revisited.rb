def method_missing(method_name, *args)
	match = method_name.to_s.match(/^hash_(\w+)/)
	if match
		self.class.class_eval do
			define_method(method_name) do
				@text << " #" + match[1]
			end
		end
		send(method_name) # calling dynamically created method
	else
		super
	end
end