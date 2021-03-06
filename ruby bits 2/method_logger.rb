class MethodLogger
	def log_method(klass, method_name)
		klass.class_eval do
			alias_method "#{method_name}_original", method_name
			define_method method_name do |*args, &block| # caputre arguments, trun block into proc
				puts "#{Time.now}: Called #{method_name}"
				send "#{method_name}_original", *args, &block
			end
		end
	end
end


class Tweet
	def say_hi
		puts 'HELLO HUMAN'
	end
end

logger = MethodLogger.new
logger.log_method(Tweet, :say_hi)

Tweet.new.say_hi