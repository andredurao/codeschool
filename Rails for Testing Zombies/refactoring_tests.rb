def assert_presence(model, field)
	model.valid?
	assert_match /can't be blank/, model.errors[field].join,
		"Presence error for #{field} not found on #{model.class}"
end

test "invalid name gives error message" do
	@z.name = nil
	assert_presence(@z, :name)
end

test "invalid graveyard gives error message" do
	@z.graveyard = nil
	assert_presence(@z, :graveyard)
end