Tweet = Struct.new(:user, :status)
 def to_s
 "#{user}: #{status}"
 end
end